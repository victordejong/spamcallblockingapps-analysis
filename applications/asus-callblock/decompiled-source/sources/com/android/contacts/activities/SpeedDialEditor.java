package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.os.Vibrator;
import android.provider.ContactsContract;
import android.support.v4.a.a.a;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.contacts.simcardmanage.b;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.widget.CircleImageView;
import com.android.vcard.VCardConfig;
import com.asus.updatesdk.BuildConfig;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/SpeedDialEditor.class */
public class SpeedDialEditor extends Activity implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {
    private static final String CHECKBOX_STATE_KEY = "checkbox_state";
    protected static final boolean DBG = false;
    private static final String DELETE_MODE_KEY = "delete_mode";
    private static final String EXTRA_ASUS_DIAL_USE_DUALSIM = "extra_asus_dial_use_dualsim";
    public static final String EXTRA_FROM_SPEED_DIAL = "com.android.phone.extra.FROM_SPEED_DIAL";
    private static final String EXTRA_HIDE_NUMBER = "hide_number";
    public static final String EXTRA_LONG_PRESS_DIALER = "com.android.contacts.extra.EXTRA_LONG_PRESS_DIALER";
    public static final String EXTRA_LONG_PRESS_NUMBER = "com.android.contacts.extra.EXTRA_LONG_PRESS_NUMBER";
    public static final String EXTRA_SPEED_DIAL_NO_NUMBER = "com.android.phone.extra.SPEED_DIAL_NO_NUMBER";
    private static final String NUMBER_TYPE_HOME_TEXT = "H: ";
    private static final String NUMBER_TYPE_MOBILE_TEXT = "M: ";
    private static final String NUMBER_TYPE_OTHER_TEXT = "O: ";
    private static final String NUMBER_TYPE_WORK_TEXT = "W: ";
    private static final int PICK_CONTACT_REQUEST = 1;
    public static final String PREF_SPEED_DIAL = "speed_dial";
    public static final String PREF_SPEED_DIAL_HAS_LOADED = "has_loaded";
    public static final String PREF_SPEED_DIAL_TABLE = "speed_dial_table";
    public static final String PREF_SPEED_DIAL_TRANSFERED = "speed_dial_transfered";
    private static final int ROW_NUMBER = 3;
    public static final int SPEED_DIAL_TOTAL_NUMBER = 9;
    private static final String UP_ACTIVITY_CLASS = "com.android.contacts.activities.DialtactsActivity";
    private static final String UP_ACTIVITY_PACKAGE = "com.asus.contacts";
    private static String[] mIsSim;
    private static String[] mPhoneType;
    private static String[] mTexts1;
    private static String[] mTexts2;
    SharedPreferences.Editor mEditor;
    SharedPreferences mSharedPref;
    protected static final String TAG = SpeedDialEditor.class.getSimpleName();
    private static int mSelectItemId = 0;
    private static long[] mContactId = null;
    private static GridViewAdapter mGridViewAdapter = null;
    private static boolean[] mSelectedPosition = new boolean[9];
    private static boolean mDeleteMode = false;
    private GridView mGridView = null;
    boolean[] mSelectedPositionForRotation = new boolean[9];
    DialogInterface.OnClickListener mDialogListener = new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.SpeedDialEditor.3
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                Intent intent = new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI);
                intent.setType("vnd.android.cursor.dir/phone_v2");
                intent.putExtra(SpeedDialEditor.EXTRA_FROM_SPEED_DIAL, true);
                SpeedDialEditor.this.startActivityForResult(intent, 1);
                return;
            }
            SpeedDialEditor.this.showDeleteConfirmDialog();
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/SpeedDialEditor$CheckIfDataChangeTask.class */
    class CheckIfDataChangeTask extends AsyncTask<Void, Void, Boolean> {
        CheckIfDataChangeTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Boolean doInBackground(Void... voidArr) {
            boolean z;
            Context applicationContext = SpeedDialEditor.this.getApplicationContext();
            if (applicationContext != null) {
                int i = 0;
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (i >= 8) {
                        break;
                    }
                    String[] querySpeedDialPrefs = SpeedDialEditor.this.querySpeedDialPrefs(applicationContext, SpeedDialEditor.this.mSharedPref, i);
                    String str = querySpeedDialPrefs[2];
                    String str2 = querySpeedDialPrefs[0];
                    String str3 = querySpeedDialPrefs[1];
                    String str4 = querySpeedDialPrefs[3];
                    z2 = z2;
                    if (!TextUtils.isEmpty(str)) {
                        z2 = z2;
                        if (SpeedDialEditor.this.checkIfDataChange(i, str, !TextUtils.isEmpty(str3) ? Long.parseLong(str3) : -1L, str2, str4)) {
                            z2 = true;
                        }
                    }
                    i++;
                }
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute((CheckIfDataChangeTask) bool);
            if (bool.booleanValue()) {
                SpeedDialEditor.this.updateSpeedDial();
                if (SpeedDialEditor.mGridViewAdapter != null) {
                    SpeedDialEditor.mGridViewAdapter.notifyDataSetChanged();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/SpeedDialEditor$CoverOnTouchListener.class */
    public class CoverOnTouchListener implements View.OnTouchListener {
        private final int LONG_CLICK_DURATION = ViewConfiguration.getLongPressTimeout();
        private final int LONG_CLICK_INTERVAL = 200;
        private boolean mClickState;
        private boolean mHasNumber;
        private int mPosition;
        private CircleImageView touchView;

        CoverOnTouchListener(boolean z) {
            this.mHasNumber = z;
        }

        private void LongClickCountDown() {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.contacts.activities.SpeedDialEditor.CoverOnTouchListener.1
                /* JADX WARN: Type inference failed for: r0v0, types: [com.android.contacts.activities.SpeedDialEditor$CoverOnTouchListener$1$1] */
                @Override // java.lang.Runnable
                public void run() {
                    new CountDownTimer(CoverOnTouchListener.this.LONG_CLICK_DURATION, 200L) { // from class: com.android.contacts.activities.SpeedDialEditor.CoverOnTouchListener.1.1
                        @Override // android.os.CountDownTimer
                        public void onFinish() {
                            if (CoverOnTouchListener.this.mClickState) {
                                Log.d(SpeedDialEditor.TAG, "[CoverOnTouchListener] After " + CoverOnTouchListener.this.LONG_CLICK_DURATION + "ms, long click is triggered");
                                ((Vibrator) SpeedDialEditor.this.getApplicationContext().getSystemService("vibrator")).vibrate(20L);
                                SpeedDialEditor.this.itemLongClick(CoverOnTouchListener.this.mPosition, CoverOnTouchListener.this.mPosition);
                                CoverOnTouchListener.this.mClickState = false;
                                CoverOnTouchListener.this.touchView.setCircleColor(CoverOnTouchListener.this.getBackgroundColor());
                                CoverOnTouchListener.this.touchView.invalidate();
                            }
                        }

                        @Override // android.os.CountDownTimer
                        public void onTick(long j) {
                        }
                    }.start();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getBackgroundColor() {
            return this.mHasNumber ? SpeedDialEditor.this.getResources().getColor(2131034411) : SpeedDialEditor.this.getResources().getColor(17170443);
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            boolean z;
            if (SpeedDialEditor.mDeleteMode) {
                z = false;
            } else {
                this.touchView = (CircleImageView) view;
                if (motionEvent.getAction() == 0) {
                    LongClickCountDown();
                    this.mClickState = true;
                    if (this.touchView != null) {
                        this.touchView.setCircleColor(SpeedDialEditor.this.getResources().getColor(2131034414));
                        this.touchView.invalidate();
                    }
                } else if (motionEvent.getAction() == 3) {
                    this.mClickState = false;
                    if (this.touchView != null) {
                        this.touchView.setCircleColor(getBackgroundColor());
                        this.touchView.invalidate();
                    }
                } else if (motionEvent.getAction() == 1) {
                    if (this.mClickState) {
                        SpeedDialEditor.this.itemClick(view, this.mPosition, this.mPosition);
                        this.mClickState = false;
                    }
                    if (this.touchView != null) {
                        this.touchView.setCircleColor(getBackgroundColor());
                        this.touchView.invalidate();
                    }
                }
                z = true;
            }
            return z;
        }

        public void setPosition(int i) {
            this.mPosition = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/SpeedDialEditor$GridViewAdapter.class */
    public class GridViewAdapter extends BaseAdapter {
        long[] mContactsId;
        GridView mGridView;
        LayoutInflater mInflater;
        String[] mIsSim;
        String[] mName;
        String[] mPhoneNumber;

        /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/SpeedDialEditor$GridViewAdapter$ViewHolder.class */
        public final class ViewHolder {
            TextView addContact;
            ImageView addImage;
            CheckBox checkbox;
            CircleImageView cover;
            ViewGroup coverView;
            RelativeLayout itemLayout;
            TextView name;
            TextView phoneNumber;
            TextView serialNumberImg;
            TextView userCount;
            RelativeLayout userInfoView;

            public ViewHolder() {
            }
        }

        public GridViewAdapter(String[] strArr, String[] strArr2, long[] jArr, GridView gridView, String[] strArr3) {
            this.mName = strArr;
            this.mPhoneNumber = strArr2;
            this.mContactsId = jArr;
            this.mInflater = SpeedDialEditor.this.getLayoutInflater();
            this.mGridView = gridView;
            this.mIsSim = strArr3;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mName.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            if (view == null) {
                ViewHolder viewHolder2 = new ViewHolder();
                view = this.mInflater.inflate(2131427667, viewGroup, false);
                viewHolder2.itemLayout = (RelativeLayout) view.findViewById(2131297332);
                viewHolder2.cover = (CircleImageView) view.findViewById(2131297330);
                viewHolder2.serialNumberImg = (TextView) view.findViewById(2131297336);
                viewHolder2.addImage = (ImageView) view.findViewById(2131297327);
                viewHolder2.addContact = (TextView) view.findViewById(2131297326);
                viewHolder2.name = (TextView) view.findViewById(2131297333);
                viewHolder2.phoneNumber = (TextView) view.findViewById(2131297334);
                viewHolder2.checkbox = (CheckBox) view.findViewById(2131297329);
                viewHolder2.userInfoView = (RelativeLayout) view.findViewById(2131297339);
                viewHolder2.userCount = (TextView) view.findViewById(2131297338);
                viewHolder2.coverView = (ViewGroup) view.findViewById(2131296613);
                view.setTag(viewHolder2);
                viewHolder = viewHolder2;
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            viewHolder.addContact.setSelected(true);
            if (this.mPhoneNumber[i].equals(BuildConfig.FLAVOR) || SpeedDialEditor.this.shouldHideItem(i)) {
                int i2 = i + 1;
                viewHolder.serialNumberImg.setText(String.valueOf(i2));
                if (i2 == 1) {
                    viewHolder.serialNumberImg.setTextColor(SpeedDialEditor.this.getResources().getColor(2131034412));
                } else {
                    viewHolder.serialNumberImg.setTextColor(SpeedDialEditor.this.getResources().getColor(2131034415));
                }
                viewHolder.addContact.setVisibility(0);
                viewHolder.addImage.setVisibility(0);
                viewHolder.serialNumberImg.setVisibility(0);
                viewHolder.userInfoView.setVisibility(8);
                viewHolder.cover.setVisibility(0);
                if (i == 0) {
                    viewHolder.addImage.setImageResource(2131165505);
                    viewHolder.addContact.setTextColor(SpeedDialEditor.this.getResources().getColor(2131034409));
                    viewHolder.addContact.setText(2131756459);
                    viewHolder.coverView.setBackgroundResource(2131165506);
                }
            } else {
                viewHolder.addContact.setVisibility(8);
                viewHolder.addImage.setVisibility(8);
                viewHolder.userInfoView.setVisibility(0);
                viewHolder.cover.setVisibility(0);
                viewHolder.userCount.setText(new StringBuilder().append(i + 1).toString());
            }
            if (this.mContactsId[i] > 0) {
                viewHolder.name.setText(this.mName[i]);
            } else {
                viewHolder.name.setText(2131756348);
            }
            viewHolder.phoneNumber.setText(this.mPhoneNumber[i]);
            if (i != 0) {
                PhotoLoaderTask photoLoaderTask = new PhotoLoaderTask();
                if (this.mContactsId[i] != 0) {
                    viewHolder.cover.setTag(false);
                    photoLoaderTask.execute(Long.valueOf(this.mContactsId[i]), viewHolder.cover, viewHolder.serialNumberImg, this.mIsSim[i], this.mName[i], Integer.valueOf(i));
                } else if (!this.mPhoneNumber[i].equals(BuildConfig.FLAVOR)) {
                    photoLoaderTask.cancel(true);
                    viewHolder.cover.setTag(true);
                    viewHolder.serialNumberImg.setVisibility(8);
                    viewHolder.cover.setCircleColor(SpeedDialEditor.this.getResources().getColor(2131034411));
                    viewHolder.cover.setImageResource(2131165322);
                    viewHolder.cover.setDimEffect(false);
                    viewHolder.cover.invalidate();
                    CoverOnTouchListener coverOnTouchListener = new CoverOnTouchListener(true);
                    coverOnTouchListener.setPosition(i);
                    viewHolder.cover.setOnTouchListener(coverOnTouchListener);
                } else {
                    viewHolder.cover.setTag(false);
                    viewHolder.cover.setCircleColor(SpeedDialEditor.this.getResources().getColor(17170443));
                    viewHolder.cover.setDimEffect(true);
                    viewHolder.cover.invalidate();
                    CoverOnTouchListener coverOnTouchListener2 = new CoverOnTouchListener(false);
                    coverOnTouchListener2.setPosition(i);
                    viewHolder.cover.setOnTouchListener(coverOnTouchListener2);
                }
                if (SpeedDialEditor.mDeleteMode) {
                    viewHolder.checkbox.setVisibility(0);
                    viewHolder.checkbox.setChecked(SpeedDialEditor.mSelectedPosition[i]);
                    viewHolder.checkbox.setClickable(true);
                    if (this.mPhoneNumber[i].isEmpty() || SpeedDialEditor.this.shouldHideItem(i)) {
                        viewHolder.checkbox.setVisibility(4);
                        viewHolder.addContact.setVisibility(8);
                        viewHolder.addImage.setVisibility(8);
                        viewHolder.checkbox.setOnCheckedChangeListener(null);
                    } else {
                        viewHolder.checkbox.setTag(Integer.valueOf(i));
                        viewHolder.checkbox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.contacts.activities.SpeedDialEditor.GridViewAdapter.1
                            @Override // android.widget.CompoundButton.OnCheckedChangeListener
                            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                                Integer num = (Integer) compoundButton.getTag();
                                if (z) {
                                    SpeedDialEditor.mSelectedPosition[num.intValue()] = true;
                                } else {
                                    SpeedDialEditor.mSelectedPosition[num.intValue()] = false;
                                }
                                SpeedDialEditor.this.invalidateOptionsMenu();
                            }
                        });
                    }
                } else {
                    viewHolder.checkbox.setVisibility(4);
                }
            }
            view.setLayoutParams(new AbsListView.LayoutParams(-1, (this.mGridView.getHeight() - ((int) SpeedDialEditor.convertDpToPixel(2.0f, SpeedDialEditor.this.getApplicationContext()))) / 3));
            return view;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/SpeedDialEditor$PhotoLoaderTask.class */
    private class PhotoLoaderTask extends AsyncTask<Object, Void, Bitmap> {
        private boolean mCancelSignal;
        CircleImageView mImageView;
        String mIsSim;
        String mName;
        int mPosition;
        TextView mTextView;

        private PhotoLoaderTask() {
            this.mCancelSignal = false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Not initialized variable reg: 8, insn: 0x0101: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r8 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:55:0x0101 */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Object... objArr) {
            BufferedInputStream bufferedInputStream;
            InputStream inputStream;
            Exception e;
            BufferedInputStream bufferedInputStream2;
            Bitmap bitmap;
            try {
                Thread.sleep(50L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            this.mImageView = (CircleImageView) objArr[1];
            this.mTextView = (TextView) objArr[2];
            this.mIsSim = (String) objArr[3];
            this.mName = (String) objArr[4];
            this.mPosition = ((Integer) objArr[5]).intValue();
            try {
                try {
                    inputStream = ContactsContract.Contacts.openContactPhotoInputStream(SpeedDialEditor.this.getContentResolver(), ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, ((Long) objArr[0]).longValue()), true);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e3) {
                e = e3;
                bufferedInputStream2 = null;
                inputStream = null;
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = null;
                inputStream = null;
            }
            if (inputStream != null) {
                try {
                    bufferedInputStream2 = new BufferedInputStream(inputStream);
                    try {
                        Bitmap decodeStream = BitmapFactory.decodeStream(bufferedInputStream2);
                        try {
                            bufferedInputStream2.close();
                            bitmap = decodeStream;
                            if (inputStream != null) {
                                inputStream.close();
                                bitmap = decodeStream;
                            }
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            bitmap = decodeStream;
                        }
                    } catch (Exception e5) {
                        e = e5;
                        e.printStackTrace();
                        if (bufferedInputStream2 != null) {
                            try {
                                bufferedInputStream2.close();
                            } catch (IOException e6) {
                                e6.printStackTrace();
                            }
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        bitmap = null;
                        return bitmap;
                    }
                } catch (Exception e7) {
                    e = e7;
                    bufferedInputStream2 = null;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedInputStream = null;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e8) {
                            e8.printStackTrace();
                            throw th;
                        }
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
                return bitmap;
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e9) {
                    e9.printStackTrace();
                }
            }
            bitmap = null;
            return bitmap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onCancelled(Bitmap bitmap) {
            this.mCancelSignal = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Bitmap bitmap) {
            if (!this.mCancelSignal) {
                if (this.mImageView.getTag() != null && ((Boolean) this.mImageView.getTag()).booleanValue()) {
                    return;
                }
                if (bitmap != null) {
                    this.mTextView.setVisibility(8);
                    this.mImageView.setImageBitmap(bitmap);
                    this.mImageView.setDimEffect(false);
                    return;
                }
                this.mImageView.setCircleColor(SpeedDialEditor.this.getResources().getColor(2131034411));
                if (!TextUtils.isEmpty(this.mIsSim) && !this.mIsSim.equals("0")) {
                    this.mTextView.setVisibility(8);
                    if (b.a(SpeedDialEditor.this.getApplicationContext())) {
                        Log.d(SpeedDialEditor.TAG, "[PhotoLoaderTask] dual sim");
                        if (this.mIsSim.equals("1")) {
                            this.mTextView.setVisibility(8);
                            this.mImageView.setImageResource(2131165284);
                            this.mImageView.setDimEffect(false);
                        } else {
                            this.mTextView.setVisibility(8);
                            this.mImageView.setImageResource(2131165286);
                            this.mImageView.setDimEffect(false);
                        }
                    } else {
                        Log.d(SpeedDialEditor.TAG, "[PhotoLoaderTask] single sim");
                        this.mTextView.setVisibility(8);
                        this.mImageView.setImageResource(2131165279);
                        this.mImageView.setDimEffect(false);
                    }
                } else if (this.mName == null || (('A' > this.mName.charAt(0) || this.mName.charAt(0) > 'Z') && ('a' > this.mName.charAt(0) || this.mName.charAt(0) > 'z'))) {
                    this.mTextView.setVisibility(8);
                    this.mImageView.setImageResource(2131165322);
                    this.mImageView.setDimEffect(false);
                } else {
                    String sb = new StringBuilder().append(this.mName.charAt(0)).toString();
                    this.mTextView.setVisibility(0);
                    this.mTextView.setText(sb);
                    this.mTextView.setTextColor(SpeedDialEditor.this.getResources().getColor(2131034381));
                    this.mImageView.setDimEffect(true);
                }
                this.mImageView.invalidate();
                CoverOnTouchListener coverOnTouchListener = new CoverOnTouchListener(true);
                coverOnTouchListener.setPosition(this.mPosition);
                this.mImageView.setOnTouchListener(coverOnTouchListener);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/SpeedDialEditor$TransferSpeedDialData.class */
    class TransferSpeedDialData extends AsyncTask<Object, Void, Boolean> {
        private Context context;
        private boolean needNotify;

        public TransferSpeedDialData(Context context, boolean z) {
            this.context = context;
            this.needNotify = z;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0136  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x022a  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x027d  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean doInBackground(java.lang.Object... r10) {
            /*
                Method dump skipped, instructions count: 651
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.SpeedDialEditor.TransferSpeedDialData.doInBackground(java.lang.Object[]):java.lang.Boolean");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Boolean bool) {
            Log.i(SpeedDialEditor.TAG, "TransferSpeedDialData END. result is " + bool);
            if (bool.booleanValue() && this.needNotify) {
                SpeedDialEditor.this.updateSpeedDial();
                if (SpeedDialEditor.mGridViewAdapter != null) {
                    SpeedDialEditor.mGridViewAdapter.notifyDataSetChanged();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009c A[Catch: all -> 0x01f4, TRY_ENTER, TryCatch #0 {all -> 0x01f4, blocks: (B:5:0x0045, B:9:0x0053, B:11:0x005e, B:13:0x007e, B:15:0x0084, B:19:0x009c, B:21:0x00a6, B:34:0x010c, B:36:0x0124, B:38:0x012a, B:43:0x014c, B:52:0x0177, B:55:0x0188, B:59:0x0194, B:61:0x019e, B:63:0x01ab, B:65:0x01b3, B:70:0x01c6), top: B:85:0x0045 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b3 A[Catch: all -> 0x01f4, TryCatch #0 {all -> 0x01f4, blocks: (B:5:0x0045, B:9:0x0053, B:11:0x005e, B:13:0x007e, B:15:0x0084, B:19:0x009c, B:21:0x00a6, B:34:0x010c, B:36:0x0124, B:38:0x012a, B:43:0x014c, B:52:0x0177, B:55:0x0188, B:59:0x0194, B:61:0x019e, B:63:0x01ab, B:65:0x01b3, B:70:0x01c6), top: B:85:0x0045 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01d6  */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean checkIfDataChange(int r10, java.lang.String r11, long r12, java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.SpeedDialEditor.checkIfDataChange(int, java.lang.String, long, java.lang.String, java.lang.String):boolean");
    }

    public static float convertDpToPixel(float f, Context context) {
        return (context.getResources().getDisplayMetrics().densityDpi / 160.0f) * f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteSpeedDialItem(int i) {
        updateSpeedDialPrefs(this, this.mEditor, i, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, 0);
        mTexts2[i] = BuildConfig.FLAVOR;
        mContactId[i] = 0;
        mGridViewAdapter.notifyDataSetChanged();
    }

    private static SharedPreferences.Editor getEditor(Context context) {
        return context.getSharedPreferences(PREF_SPEED_DIAL_TABLE, 0).edit();
    }

    private static SharedPreferences getPrefs(Context context) {
        return context.getSharedPreferences(PREF_SPEED_DIAL_TABLE, 0);
    }

    private boolean isSelectItem() {
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= 9) {
                break;
            } else if (mSelectedPosition[i]) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void itemClick(View view, int i, long j) {
        if (i != 0) {
            mSelectItemId = (int) j;
            String str = mTexts1[mSelectItemId];
            String str2 = mTexts2[mSelectItemId];
            long j2 = mContactId[mSelectItemId];
            if (mDeleteMode) {
                if (!(view.getTag() instanceof GridViewAdapter.ViewHolder)) {
                    return;
                }
                if (mSelectedPosition[mSelectItemId]) {
                    ((GridViewAdapter.ViewHolder) view.getTag()).checkbox.setChecked(false);
                } else {
                    ((GridViewAdapter.ViewHolder) view.getTag()).checkbox.setChecked(true);
                }
            } else if (str2.equals(BuildConfig.FLAVOR) || shouldHideItem(i)) {
                try {
                    Intent intent = new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI);
                    intent.setType("vnd.android.cursor.dir/phone_v2");
                    intent.putExtra(EXTRA_FROM_SPEED_DIAL, true);
                    startActivityForResult(intent, 1);
                } catch (Exception e) {
                    log("onItemClick(): Open Contact picker failed: " + e.toString());
                }
            } else {
                try {
                    CallUtil.startDialActivity(this, newDialNumberIntent(str2, str, j2));
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(5, this, "Dialer", "Speed Dial", "Speed Dial: press item", null);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(18, (Activity) this, "Make a Call", true);
                } catch (Exception e2) {
                    log("onItemClick(): Fail to dial. Excepion:" + e2.toString());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void itemLongClick(int i, long j) {
        if (i != 0) {
            mSelectItemId = (int) j;
            String str = mTexts1[mSelectItemId];
            if (!mTexts2[mSelectItemId].equals(BuildConfig.FLAVOR) && !shouldHideItem(i)) {
                String string = getResources().getString(2131756200);
                String string2 = getResources().getString(2131756199);
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setTitle(str);
                builder.setItems(new String[]{string, string2}, this.mDialogListener);
                builder.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void leaveDeleteMode() {
        mDeleteMode = false;
        invalidateOptionsMenu();
        getActionBar().setTitle(2131756193);
        mGridViewAdapter.notifyDataSetChanged();
        for (int i = 0; i < 9; i++) {
            mSelectedPosition[i] = false;
        }
    }

    private Intent newDialNumberIntent(String str, String str2, long j) {
        int intExtra = getIntent().getIntExtra(EXTRA_ASUS_DIAL_USE_DUALSIM, -1);
        Intent callIntent = intExtra >= 0 ? CallUtil.getCallIntent(str, "com.android.contacts.activities.DialtactsActivity", b.h(this, intExtra)) : CallUtil.getCallIntent(str, "com.android.contacts.activities.DialtactsActivity");
        if (str2 != null) {
            callIntent.putExtra("com.android.phone.AsusDialName", str2);
        }
        callIntent.putExtra("com.android.phone.FromAsusDialer", true);
        callIntent.putExtra(EXTRA_ASUS_DIAL_USE_DUALSIM, intExtra);
        if (b.e(this, 1)) {
            callIntent.putExtra(EXTRA_ASUS_DIAL_USE_DUALSIM, 0);
        } else if (b.e(this, 2)) {
            callIntent.putExtra(EXTRA_ASUS_DIAL_USE_DUALSIM, 1);
        }
        callIntent.putExtra("com.android.phone.AsusDialContactId", j);
        return callIntent;
    }

    private boolean oldFunctionToCall() {
        boolean z = false;
        String stringExtra = getIntent().getStringExtra(EXTRA_LONG_PRESS_NUMBER);
        Log.i(TAG, "[Old] onCreate(): process speed dial attempt from dialer, speedDialNumber=" + stringExtra);
        for (int i = 0; i < 8; i++) {
            String str = querySpeedDialTable(i, SpeedDialList.Columns.PHONETYPE)[0];
            if (!str.equals(BuildConfig.FLAVOR)) {
                if (str.equals(NUMBER_TYPE_HOME_TEXT)) {
                    update_contact(i);
                } else if (str.equals(NUMBER_TYPE_MOBILE_TEXT)) {
                    update_contact(i);
                } else if (str.equals(NUMBER_TYPE_WORK_TEXT)) {
                    update_contact(i);
                } else if (str.equals(NUMBER_TYPE_OTHER_TEXT)) {
                    update_contact(i);
                }
            }
        }
        int intValue = Integer.valueOf(stringExtra).intValue() - 2;
        String[] querySpeedDialTable = querySpeedDialTable(intValue, SpeedDialList.Columns.PHONENUMBER, "displayname");
        String str2 = querySpeedDialTable[0];
        String str3 = querySpeedDialTable[1];
        if (!str2.equals(BuildConfig.FLAVOR)) {
            String str4 = querySpeedDialTable(intValue, "contactid")[0];
            long longValue = TextUtils.isEmpty(str4) ? -1L : Long.valueOf(str4).longValue();
            Log.i(TAG, "[Old] onCreate(): speed dial make call to someone number is not empty. contactId is " + longValue);
            try {
                CallUtil.startDialActivity(this, newDialNumberIntent(str2, str3, longValue));
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(5, this, "Dialer", "Speed Dial", "Speed Dial: long press", null);
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(18, (Activity) this, "Make a Call", true);
                z = true;
            } catch (Exception e) {
                Log.e(TAG, "[Old] onCreate(): speed dial make call error. Exception:" + e.toString());
                z = true;
            }
        } else {
            setRequestedOrientation(-1);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] querySpeedDialPrefs(Context context, SharedPreferences sharedPreferences, long j) {
        String[] strArr = new String[4];
        for (int i = 0; i < 4; i++) {
            strArr[i] = BuildConfig.FLAVOR;
        }
        if (!sharedPreferences.getString(new StringBuilder().append(Long.toString(j + 1)).append("_phonenumber").toString(), BuildConfig.FLAVOR).equals(BuildConfig.FLAVOR)) {
            strArr[0] = sharedPreferences.getString(Long.toString(j + 1) + "_displayname", BuildConfig.FLAVOR);
            strArr[1] = sharedPreferences.getString(Long.toString(j + 1) + "_contactid", BuildConfig.FLAVOR);
            strArr[2] = sharedPreferences.getString(Long.toString(j + 1) + "_phonenumber", BuildConfig.FLAVOR);
            strArr[3] = sharedPreferences.getString(Long.toString(j + 1) + "_isSim", BuildConfig.FLAVOR);
        }
        return strArr;
    }

    private String[] querySpeedDialTable(long j, String... strArr) {
        Throwable th;
        Cursor cursor;
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr2.length; i++) {
            try {
                strArr2[i] = BuildConfig.FLAVOR;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        try {
            Cursor query = getContentResolver().query(SpeedDialList.CONTENT_URI, new String[]{"_id", "displayname", "contactid", SpeedDialList.Columns.PHONENUMBER, SpeedDialList.Columns.PHONETYPE, SpeedDialList.Columns.PHONETYPENUMBER, SpeedDialList.Columns.DATAID, SpeedDialList.Columns.ISSIM}, null, null, null);
            if (query != null) {
                try {
                    if (strArr.length != 0) {
                        for (int i2 = 0; i2 < strArr.length; i2++) {
                            if (strArr[i2].equals("displayname")) {
                                query.moveToPosition((int) j);
                                strArr2[i2] = query.getString(1);
                            } else if (strArr[i2].equals("contactid")) {
                                query.moveToPosition((int) j);
                                strArr2[i2] = query.getString(2);
                            } else if (strArr[i2].equals(SpeedDialList.Columns.PHONENUMBER)) {
                                query.moveToPosition((int) j);
                                strArr2[i2] = query.getString(3);
                            } else if (strArr[i2].equals(SpeedDialList.Columns.PHONETYPE)) {
                                query.moveToPosition((int) j);
                                strArr2[i2] = query.getString(4);
                            } else if (strArr[i2].equals(SpeedDialList.Columns.PHONETYPENUMBER)) {
                                query.moveToPosition((int) j);
                                strArr2[i2] = query.getString(5);
                            } else if (strArr[i2].equals(SpeedDialList.Columns.DATAID)) {
                                query.moveToPosition((int) j);
                                strArr2[i2] = query.getString(6);
                            } else if (strArr[i2].equals(SpeedDialList.Columns.ISSIM)) {
                                query.moveToPosition((int) j);
                                strArr2[i2] = Integer.toString(query.getInt(7));
                            }
                        }
                    }
                } catch (CursorIndexOutOfBoundsException e) {
                    e = e;
                    cursor = query;
                    Log.w(TAG, "querySpeedDialTable(): caught " + e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return strArr2;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (CursorIndexOutOfBoundsException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            Cursor cursor2 = null;
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
        return strArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldHideItem(int i) {
        boolean z = false;
        if (mIsSim != null) {
            z = false;
            if (mIsSim[i] != null) {
                z = false;
                if (!mIsSim[i].equals(BuildConfig.FLAVOR)) {
                    int parseInt = Integer.parseInt(mIsSim[i]);
                    z = false;
                    if (parseInt != 0) {
                        z = false;
                        if (b.c(this, parseInt) != 5) {
                            log("Hide speed dial item due to the absence of SIM" + parseInt);
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDeleteConfirmDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(2131756201);
        builder.setMessage(2131756197);
        builder.setPositiveButton(2131755924, new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.SpeedDialEditor.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SpeedDialEditor.this.deleteSpeedDialItem(SpeedDialEditor.mSelectItemId);
            }
        });
        builder.setNegativeButton(2131755345, new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.SpeedDialEditor.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.show();
    }

    private void showMultiDeleteConfirmDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(2131756201);
        builder.setMessage(2131756198);
        builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.SpeedDialEditor.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                for (int i2 = 1; i2 < 9; i2++) {
                    if (SpeedDialEditor.mSelectedPosition[i2]) {
                        SpeedDialEditor.this.deleteSpeedDialItem(i2);
                    }
                }
                SpeedDialEditor.this.leaveDeleteMode();
            }
        });
        builder.setNegativeButton(2131755345, new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.SpeedDialEditor.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SpeedDialEditor.this.leaveDeleteMode();
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpeedDial() {
        for (int i = 0; i < 8; i++) {
            String[] querySpeedDialPrefs = querySpeedDialPrefs(this, this.mSharedPref, i);
            String str = querySpeedDialPrefs[2];
            String str2 = querySpeedDialPrefs[0];
            String str3 = querySpeedDialPrefs[1];
            String str4 = querySpeedDialPrefs[3];
            if (!str3.equals(BuildConfig.FLAVOR)) {
                mContactId[i + 1] = Long.parseLong(str3);
            } else {
                mContactId[i + 1] = 0;
            }
            mTexts1[i + 1] = str2;
            mTexts2[i + 1] = str;
            mIsSim[i + 1] = str4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpeedDialPrefs(Context context, SharedPreferences.Editor editor, int i, String str, String str2, String str3, int i2) {
        Log.i(TAG, "[updateSpeedDialPrefs] rowID: " + i + " contactid: " + str2 + " isSim = " + i2);
        String str4 = str;
        if (str == null) {
            str4 = BuildConfig.FLAVOR;
        }
        String str5 = str2;
        if (str2 == null) {
            str5 = BuildConfig.FLAVOR;
        }
        String str6 = str3;
        if (str3 == null) {
            str6 = BuildConfig.FLAVOR;
        }
        editor.putString(Integer.toString(i) + "_displayname", str4);
        editor.putString(Integer.toString(i) + "_contactid", str5);
        editor.putString(Integer.toString(i) + "_phonenumber", str6);
        editor.putString(Integer.toString(i) + "_isSim", String.valueOf(i2));
        editor.commit();
    }

    private void updateSpeedDialTable(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Uri withAppendedId = ContentUris.withAppendedId(SpeedDialList.CONTENT_URI, i + 1);
        String str8 = str;
        if (str == null) {
            str8 = BuildConfig.FLAVOR;
        }
        String str9 = str2;
        if (str2 == null) {
            str9 = BuildConfig.FLAVOR;
        }
        String str10 = str3;
        if (str3 == null) {
            str10 = BuildConfig.FLAVOR;
        }
        String str11 = str4;
        if (str4 == null) {
            str11 = BuildConfig.FLAVOR;
        }
        String str12 = str5;
        if (str5 == null) {
            str12 = BuildConfig.FLAVOR;
        }
        String str13 = str6;
        if (str6 == null) {
            str13 = BuildConfig.FLAVOR;
        }
        String str14 = str7;
        if (str7 == null) {
            str14 = BuildConfig.FLAVOR;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("displayname", str8);
        contentValues.put("contactid", str9);
        contentValues.put(SpeedDialList.Columns.PHONENUMBER, str10);
        contentValues.put(SpeedDialList.Columns.PHONETYPE, str11);
        contentValues.put(SpeedDialList.Columns.PHONETYPENUMBER, str12);
        contentValues.put(SpeedDialList.Columns.DATAID, str13);
        contentValues.put(SpeedDialList.Columns.ISSIM, str14);
        getContentResolver().update(withAppendedId, contentValues, null, null);
    }

    private void update_contact(int i) {
        Cursor cursor;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String[] querySpeedDialTable = querySpeedDialTable(i, "displayname", "contactid", SpeedDialList.Columns.PHONENUMBER, SpeedDialList.Columns.PHONETYPE, SpeedDialList.Columns.PHONETYPENUMBER, SpeedDialList.Columns.DATAID, SpeedDialList.Columns.ISSIM);
        String str8 = querySpeedDialTable[0];
        String str9 = querySpeedDialTable[1];
        String str10 = querySpeedDialTable[2];
        String str11 = querySpeedDialTable[3];
        String str12 = querySpeedDialTable[4];
        String str13 = querySpeedDialTable[5];
        String str14 = querySpeedDialTable[6];
        try {
            Cursor query = getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id = ?", new String[]{str9}, null);
            if (query != null) {
                try {
                    int count = query.getCount();
                    if (count > 0) {
                        int i2 = 0;
                        boolean z = false;
                        for (int i3 = 0; i3 < count; i3++) {
                            query.moveToPosition(i3);
                            String string = query.getString(query.getColumnIndex(CoverUtils.CoverData.COVER_TYPE));
                            str = query.getString(query.getColumnIndex(CoverUtils.CoverData.COVER_URI));
                            str2 = query.getString(query.getColumnIndex("display_name"));
                            String string2 = query.getString(query.getColumnIndex("_id"));
                            String string3 = query.getString(query.getColumnIndex(SpeedDialList.Columns.ISSIM));
                            if (string == null) {
                                if (string2.equals(str13)) {
                                    if ((str10 == null || str10.equals(str)) && (str2 == null || str2.equals(str8))) {
                                        i2 = i2;
                                        if (!string3.equals(str14)) {
                                        }
                                    }
                                    z = true;
                                    str3 = NUMBER_TYPE_OTHER_TEXT;
                                    str4 = "4";
                                    str5 = string3;
                                    break;
                                }
                                i2++;
                            } else {
                                int intValue = Integer.valueOf(string).intValue();
                                String str15 = string;
                                if (intValue != 1) {
                                    str15 = string;
                                    if (intValue != 2) {
                                        str15 = string;
                                        if (intValue != 3) {
                                            str15 = "4";
                                        }
                                    }
                                }
                                if (str15.equals(str12) && string2.equals(str13)) {
                                    if ((str10 == 0 || str10.equals(str)) && (str2 == 0 || str2.equals(str8))) {
                                        i2 = i2;
                                        if (!str14.equals(string3)) {
                                        }
                                    }
                                    z = true;
                                    str3 = str11;
                                    str4 = str12;
                                    str5 = string3;
                                    break;
                                }
                                if (str15.equals(str12)) {
                                    i2 = i2;
                                    if (str15.equals(str12)) {
                                        i2 = i2;
                                        if (string2.equals(str13)) {
                                        }
                                    }
                                }
                                i2++;
                            }
                        }
                        str = str10;
                        str2 = str8;
                        str3 = str11;
                        str4 = str12;
                        str5 = str14;
                        if (i2 == count) {
                            z = true;
                            str2 = BuildConfig.FLAVOR;
                            str6 = BuildConfig.FLAVOR;
                            str = BuildConfig.FLAVOR;
                            str3 = BuildConfig.FLAVOR;
                            str4 = BuildConfig.FLAVOR;
                            str7 = BuildConfig.FLAVOR;
                            str5 = BuildConfig.FLAVOR;
                        } else {
                            str6 = str9;
                            str7 = str13;
                        }
                        if (z) {
                            updateSpeedDialTable(i, str2, str6, str, str3, str4, str7, str5);
                        }
                    } else if (!str8.isEmpty() && !str10.isEmpty() && !shouldHideItem(i + 1)) {
                        log("update_contact(): speed dial entry was valid but no phone number existed now => clear entry , i = " + i);
                        updateSpeedDialTable(i, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    protected void log(String str) {
        Log.d(TAG, "[SpeedDialEditor] " + str);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            Cursor query = getContentResolver().query(intent.getData(), null, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        long j = query.getLong(query.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID));
                        query.getLong(query.getColumnIndex("_id"));
                        int i3 = query.getInt(query.getColumnIndex("has_phone_number"));
                        int columnIndex = query.getColumnIndex(SpeedDialList.Columns.ISSIM);
                        int i4 = 0;
                        if (columnIndex > 0) {
                            i4 = query.getInt(columnIndex);
                        }
                        if (i3 == 1) {
                            String string = query.getString(query.getColumnIndex("display_name"));
                            String string2 = query.getString(query.getColumnIndex(CoverUtils.CoverData.COVER_URI));
                            updateSpeedDialPrefs(this, this.mEditor, mSelectItemId, string, String.valueOf(j), string2, i4);
                            mTexts1[mSelectItemId] = string;
                            mTexts2[mSelectItemId] = string2;
                            mIsSim[mSelectItemId] = Integer.toString(i4);
                            mContactId[mSelectItemId] = j;
                            if (mGridViewAdapter != null) {
                                mGridViewAdapter.notifyDataSetChanged();
                            }
                        }
                        if (query != null) {
                            query.close();
                            return;
                        }
                        return;
                    }
                } catch (Throwable th) {
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (mDeleteMode) {
            leaveDeleteMode();
        } else {
            super.onBackPressed();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x01c8 -> B:17:0x008d). Please submit an issue!!! */
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        long j = 0;
        boolean z = false;
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            setContentView(2131427666);
            this.mSharedPref = getPrefs(this);
            this.mEditor = getEditor(this);
            Boolean valueOf = Boolean.valueOf(this.mSharedPref.getBoolean(PREF_SPEED_DIAL_TRANSFERED, false));
            setRequestedOrientation(1);
            if (getIntent().getBooleanExtra(EXTRA_LONG_PRESS_DIALER, false)) {
                if (!PhoneCapabilityTester.IsAsusDevice() || valueOf.booleanValue()) {
                    String stringExtra = getIntent().getStringExtra(EXTRA_LONG_PRESS_NUMBER);
                    Log.i(TAG, "[New] onCreate(): process speed dial attempt from dialer, speedDialNumber=" + stringExtra);
                    int intValue = Integer.valueOf(stringExtra).intValue() - 2;
                    String[] querySpeedDialPrefs = querySpeedDialPrefs(this, this.mSharedPref, intValue);
                    String str = querySpeedDialPrefs[0];
                    String str2 = querySpeedDialPrefs[1];
                    String str3 = querySpeedDialPrefs[2];
                    String str4 = querySpeedDialPrefs[3];
                    if (!str3.equals(BuildConfig.FLAVOR)) {
                        if (!TextUtils.isEmpty(str2)) {
                            j = Long.valueOf(str2).longValue();
                        }
                        if (checkIfDataChange(intValue, str3, j, str, str4)) {
                            String[] querySpeedDialPrefs2 = querySpeedDialPrefs(this, this.mSharedPref, intValue);
                            str = querySpeedDialPrefs2[0];
                            j = TextUtils.isEmpty(querySpeedDialPrefs2[1]) ? -1L : Long.valueOf(querySpeedDialPrefs2[1]).longValue();
                        }
                        Log.i(TAG, "[New] onCreate(): speed dial make call to someone number is not empty. contact is = " + j);
                        try {
                            CallUtil.startDialActivity(this, newDialNumberIntent(str3, str, j));
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(5, this, "Dialer", "Speed Dial", "Speed Dial: long press", null);
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(18, (Activity) this, "Make a Call", true);
                            z = true;
                        } catch (Exception e) {
                            Log.e(TAG, "[New] onCreate(): speed dial make call error. Exception:" + e.toString());
                            z = true;
                        }
                    }
                } else {
                    z = oldFunctionToCall();
                }
                if (PhoneCapabilityTester.IsAsusDevice() && !valueOf.booleanValue()) {
                    try {
                        new TransferSpeedDialData(this, false).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.mEditor);
                    } catch (Exception e2) {
                        Log.w(TAG, e2.toString());
                    }
                }
                Intent intent = new Intent();
                intent.putExtra(EXTRA_SPEED_DIAL_NO_NUMBER, z);
                setResult(-1, intent);
                finish();
                return;
            }
            mTexts1 = new String[9];
            mTexts2 = new String[9];
            mContactId = new long[9];
            mIsSim = new String[9];
            mPhoneType = new String[9];
            for (int i = 0; i < 9; i++) {
                mTexts1[i] = BuildConfig.FLAVOR;
                mTexts2[i] = BuildConfig.FLAVOR;
                mContactId[i] = 0;
                mIsSim[i] = BuildConfig.FLAVOR;
                mPhoneType[i] = BuildConfig.FLAVOR;
            }
            try {
                if (!PhoneCapabilityTester.IsAsusDevice() || valueOf.booleanValue()) {
                    new CheckIfDataChangeTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } else {
                    new TransferSpeedDialData(this, true).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.mEditor);
                }
            } catch (Exception e3) {
                Log.w(TAG, e3.toString());
            }
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayShowTitleEnabled(true);
                actionBar.setDisplayShowHomeEnabled(false);
                actionBar.setDisplayHomeAsUpEnabled(true);
                actionBar.setTitle(2131756193);
            }
            this.mGridView = (GridView) findViewById(2131296882);
            mGridViewAdapter = new GridViewAdapter(mTexts1, mTexts2, mContactId, this.mGridView, mIsSim);
            this.mGridView.setOnItemClickListener(this);
            this.mGridView.setOnItemLongClickListener(this);
            this.mGridView.setAdapter((ListAdapter) mGridViewAdapter);
            if (PhoneCapabilityTester.IsSystemApp()) {
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(18, (Activity) this, "Speed dial", true);
            } else {
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(10, (Activity) this, "Speed dial", true);
            }
            if (bundle != null) {
                mDeleteMode = bundle.getBoolean(DELETE_MODE_KEY);
                this.mSelectedPositionForRotation = (boolean[]) bundle.getBooleanArray(CHECKBOX_STATE_KEY).clone();
                mSelectedPosition = (boolean[]) this.mSelectedPositionForRotation.clone();
            }
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131492903, menu);
        MenuItem findItem = menu.findItem(2131297335);
        Drawable b2 = a.b(findItem.getIcon().mutate());
        a.a(b2, getResources().getColor(2131034157));
        findItem.setIcon(b2);
        return true;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (mDeleteMode) {
            leaveDeleteMode();
        }
        mGridViewAdapter = null;
        if (this.mGridView != null) {
            this.mGridView.setOnItemClickListener(null);
        }
        this.mGridView = null;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        itemClick(view, i, j);
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        itemLongClick(i, j);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            if (mDeleteMode) {
                leaveDeleteMode();
                return true;
            }
            Intent intent = new Intent();
            intent.setClassName(UP_ACTIVITY_PACKAGE, "com.android.contacts.activities.DialtactsActivity");
            intent.addFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
            intent.putExtra(MainDialtactsActivity.EXTRA_BACK_TO_TOOLPANEL, true);
            ImplicitIntentsUtil.startActivityInApp(this, intent);
            finish();
            return true;
        } else if (itemId == 2131297335) {
            mDeleteMode = true;
            mGridViewAdapter.notifyDataSetChanged();
            invalidateOptionsMenu();
            getActionBar().setTitle(2131756201);
            return true;
        } else if (itemId == 2131297331) {
            if (isSelectItem()) {
                showMultiDeleteConfirmDialog();
                return true;
            }
            leaveDeleteMode();
            return true;
        } else if (itemId != 2131297328) {
            return true;
        } else {
            leaveDeleteMode();
            return true;
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        MenuItem findItem = menu.findItem(2131297328);
        if (findItem != null) {
            com.android.contacts.skin.a.a(this, findItem);
        }
        MenuItem findItem2 = menu.findItem(2131297331);
        if (findItem2 != null) {
            com.android.contacts.skin.a.a(this, findItem2);
        }
        MenuItem item = menu.getItem(0);
        if (!mDeleteMode) {
            z = true;
        }
        item.setVisible(z);
        menu.getItem(1).setVisible(mDeleteMode);
        menu.getItem(2).setVisible(mDeleteMode);
        if (!menu.getItem(2).isVisible() || !isSelectItem()) {
            return true;
        }
        menu.getItem(2).setEnabled(true);
        if (findItem2 == null) {
            return true;
        }
        com.android.contacts.skin.a.a(this, findItem2);
        return true;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        updateSpeedDial();
        mGridViewAdapter.notifyDataSetChanged();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(DELETE_MODE_KEY, mDeleteMode);
        for (int i = 0; i < mSelectedPosition.length; i++) {
            this.mSelectedPositionForRotation[i] = mSelectedPosition[i];
        }
        bundle.putBooleanArray(CHECKBOX_STATE_KEY, this.mSelectedPositionForRotation);
        super.onSaveInstanceState(bundle);
    }
}
