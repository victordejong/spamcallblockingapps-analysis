package com.android.contacts.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Toast;
import com.android.contacts.a.b;
import com.android.contacts.f.a;
import com.android.contacts.util.AsusPhoneNumberUtils;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.a.c;
import com.asus.blocklist.g;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/BlockAndTagNumberActivity.class */
public class BlockAndTagNumberActivity extends Activity implements CompoundButton.OnCheckedChangeListener {
    public static final String ACTION = "com.asus.app.CallGuardBlockAndTag";
    public static final String ASUS_CALLER_BLOCK_CONTACT_DISPLAYNAME = "ASUS_CALLER_BLOCK_AND_TAG_CONTACTNAME";
    public static final String ASUS_CALLER_BLOCK_CONTACT_ID = "ASUS_CALLER_BLOCK_AND_TAG_CONTACTID";
    public static final String ASUS_CALLER_BLOCK_DIALPAD_STATUS = "ASUS_CALLER_BLOCK_DIALPAD_STATUS";
    public static final String ASUS_CALLER_BLOCK_FLAG = "ASUS_CALLER_BLOCK_FLAG";
    public static final String ASUS_CALLER_BLOCK_IS_END_CALL_BLOCK = "ASUS_CALLER_BLOCK_IS_END_CALL_BLOCK";
    public static final String ASUS_CALLER_BLOCK_IS_FROM_MESSAGE = "ASUS_CALLER_BLOCK_IS_FROM_MESSAGE";
    public static final String ASUS_CALLER_BLOCK_IS_PHONIC_NUMBER = "ASUS_CALLER_BLOCK_IS_PHONIC_NUMBER";
    public static final String ASUS_CALLER_BLOCK_IS_SWIPE_TO_BLOCK = "ASUS_CALLER_BLOCK_IS_SWIPE_TO_BLOCK";
    public static final String ASUS_CALLER_BLOCK_MOVE_TO_BLOCK_LIST = "ASUS_CALLER_BLOCK_MOVE_TO_BLOCK_LIST";
    public static final String ASUS_CALLER_BLOCK_NUMBER = "ASUS_CALLER_BLOCK_AND_TAG_NUMBER";
    public static final String ASUS_CALLER_BLOCK_RESULT = "ASUS_CALLER_BLOCK_RESULT";
    public static final String ASUS_CALLER_ONLY_BLOCK_NUMBER = "ASUS_CALLER_ONLY_BLOCK_NUMBER";
    public static final String ASUS_CALLER_TAGGED_RESULT = "ASUS_CALLER_BLOCK_AND_TAG_RESULT";
    public static final String ASUS_CALLER_TAGGED_TIMES = "ASUS_CALLER_BLOCK_AND_TAG_TIMES";
    public static final String ASUS_CALLER_TAG_TYPE = "ASUS_CALLER_BLOCK_AND_TAG_TYPE";
    public static final String AUTHORITY = "blocklist";
    public static final String BLOCK_FROM_DIALER = "is_from_dialer";
    private static final String TAG = "BlockAndTagNumberActivity";
    private String blockNumber;
    private long block_contactId;
    private String block_contactName;
    private boolean mBlock;
    private boolean mOnlyBlockNumber;
    private String manualTag;
    private a.EnumC0038a tagType;
    private long thread_id;
    public static final Uri BLOCKLIST_CONTENT_URI = Uri.parse("content://blocklist/blocklist");
    private static boolean isSucess = true;
    private boolean mIsHidden = false;
    private boolean mIsPhonicNumber = true;
    private boolean mIsFromMessage = false;
    private boolean mIsMoveHistory = false;
    private boolean mIsEndCallBlock = false;
    private boolean mIsNotToAsk = false;
    private boolean mIsFromDialer = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void callBackAndFinish(int i, boolean z) {
        Intent intent = new Intent();
        intent.putExtra(ASUS_CALLER_TAGGED_RESULT, z);
        intent.putExtra("ASUS_CALLER_BLOCK_THREAD_ID", this.thread_id);
        intent.putExtra(ASUS_CALLER_BLOCK_NUMBER, this.blockNumber);
        intent.putExtra(ASUS_CALLER_BLOCK_DIALPAD_STATUS, this.mIsHidden);
        intent.putExtra(ASUS_CALLER_BLOCK_RESULT, z);
        intent.putExtra(ASUS_CALLER_BLOCK_MOVE_TO_BLOCK_LIST, this.mIsMoveHistory);
        setResult(i, intent);
        finish();
    }

    private void launchBlockConfirmDialog(final Context context) {
        if (this.mIsFromMessage) {
            View inflate = getLayoutInflater().inflate(2131427603, (ViewGroup) null);
            AlertDialog.Builder onDismissListener = new AlertDialog.Builder(context).setTitle(context.getResources().getString(2131755783)).setView(inflate).setPositiveButton(context.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.BlockAndTagNumberActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (BlockAndTagNumberActivity.this.block_contactId <= 0 || TextUtils.isEmpty(BlockAndTagNumberActivity.this.block_contactName) || BlockAndTagNumberActivity.this.mOnlyBlockNumber) {
                        if (g.h(context)) {
                            com.asus.blocklist.backwardcompatible.a.c(context, BlockAndTagNumberActivity.this.blockNumber);
                        } else {
                            g.e(context, BlockAndTagNumberActivity.this.blockNumber);
                        }
                    } else if (g.h(context)) {
                        com.asus.blocklist.backwardcompatible.a.b(context, BlockAndTagNumberActivity.this.block_contactId);
                    } else {
                        g.a(context, BlockAndTagNumberActivity.this.block_contactId);
                    }
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        b.a();
                        b.a(19, context, "Behavior - Block", "Block by asus message", null, null);
                    }
                    BlockAndTagNumberActivity.this.callBackAndFinish(-1, true);
                }
            }).setNegativeButton(context.getString(17039369), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.BlockAndTagNumberActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    BlockAndTagNumberActivity.this.callBackAndFinish(0, false);
                }
            }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.contacts.activities.BlockAndTagNumberActivity.1
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    BlockAndTagNumberActivity.this.callBackAndFinish(0, false);
                }
            });
            if (this.block_contactId <= 0 || TextUtils.isEmpty(this.block_contactName) || this.mOnlyBlockNumber) {
                if (com.asus.blocklist.a.b(context)) {
                    onDismissListener.setMessage(context.getResources().getString(2131755212));
                } else {
                    onDismissListener.setMessage(context.getResources().getString(2131755213));
                }
            } else if (com.asus.blocklist.a.b(context)) {
                onDismissListener.setMessage(context.getResources().getString(2131755202));
            } else {
                onDismissListener.setMessage(context.getResources().getString(2131755203));
            }
            CheckBox checkBox = (CheckBox) inflate.findViewById(2131297088);
            checkBox.setChecked(false);
            checkBox.setOnCheckedChangeListener(this);
            onDismissListener.show();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        if (!this.mIsEndCallBlock) {
            builder.setTitle(context.getResources().getString(2131755783));
        } else {
            View inflate2 = getLayoutInflater().inflate(2131427537, (ViewGroup) null);
            ((CheckBox) inflate2.findViewById(2131296791)).setOnCheckedChangeListener(this);
            builder.setView(inflate2);
        }
        builder.setPositiveButton(context.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.BlockAndTagNumberActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Context context2;
                String str;
                if (BlockAndTagNumberActivity.this.block_contactId <= 0 || TextUtils.isEmpty(BlockAndTagNumberActivity.this.block_contactName) || BlockAndTagNumberActivity.this.mOnlyBlockNumber) {
                    if (g.h(context)) {
                        com.asus.blocklist.backwardcompatible.a.c(context, BlockAndTagNumberActivity.this.blockNumber);
                    } else {
                        g.e(context, BlockAndTagNumberActivity.this.blockNumber);
                    }
                } else if (g.h(context)) {
                    com.asus.blocklist.backwardcompatible.a.b(context, BlockAndTagNumberActivity.this.block_contactId);
                } else {
                    g.a(context, BlockAndTagNumberActivity.this.block_contactId);
                }
                if (BlockAndTagNumberActivity.this.mIsNotToAsk && BlockAndTagNumberActivity.this.mIsEndCallBlock) {
                    c.u(context);
                }
                if (PhoneCapabilityTester.IsSystemApp()) {
                    if (BlockAndTagNumberActivity.this.mIsEndCallBlock) {
                        b.a();
                        context2 = context;
                        str = "Block by end call";
                    } else {
                        b.a();
                        context2 = context;
                        str = BlockAndTagNumberActivity.this.mIsFromDialer ? "Block by smart search" : "Block by call log";
                    }
                    b.a(19, context2, "Behavior - Block", str, null, null);
                }
                BlockAndTagNumberActivity.this.callBackAndFinish(-1, true);
            }
        }).setNegativeButton(context.getString(17039369), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.BlockAndTagNumberActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                BlockAndTagNumberActivity.this.callBackAndFinish(0, false);
            }
        }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.contacts.activities.BlockAndTagNumberActivity.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                BlockAndTagNumberActivity.this.callBackAndFinish(0, false);
            }
        });
        if (this.block_contactId <= 0 || TextUtils.isEmpty(this.block_contactName) || this.mOnlyBlockNumber) {
            if (this.mIsEndCallBlock) {
                builder.setMessage(context.getResources().getString(2131755159, this.blockNumber));
            } else if (com.asus.blocklist.a.b(context)) {
                builder.setMessage(context.getResources().getString(2131755212));
            } else {
                builder.setMessage(context.getResources().getString(2131755213));
            }
        } else if (this.mIsEndCallBlock) {
            builder.setMessage(context.getResources().getString(2131755159, this.blockNumber));
        } else if (com.asus.blocklist.a.b(context)) {
            builder.setMessage(context.getResources().getString(2131755202));
        } else {
            builder.setMessage(context.getResources().getString(2131755203));
        }
        builder.show();
    }

    private void launchUnBlockConfirmDialog(final Context context) {
        new AlertDialog.Builder(context).setTitle(getResources().getString(2131755798)).setMessage(getResources().getString(2131755015)).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.BlockAndTagNumberActivity.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Context context2;
                String str;
                if (BlockAndTagNumberActivity.this.block_contactId <= 0 || TextUtils.isEmpty(BlockAndTagNumberActivity.this.block_contactName) || BlockAndTagNumberActivity.this.mOnlyBlockNumber) {
                    if (g.h(context)) {
                        com.asus.blocklist.backwardcompatible.a.d(context, BlockAndTagNumberActivity.this.blockNumber);
                    } else {
                        g.f(context, BlockAndTagNumberActivity.this.blockNumber);
                    }
                } else if (g.h(context)) {
                    com.asus.blocklist.backwardcompatible.a.c(context, BlockAndTagNumberActivity.this.block_contactId);
                } else {
                    g.b(context, BlockAndTagNumberActivity.this.block_contactId);
                }
                if (PhoneCapabilityTester.IsSystemApp()) {
                    if (BlockAndTagNumberActivity.this.mIsFromMessage) {
                        b.a();
                        context2 = context;
                        str = "Unblock by asus message";
                    } else {
                        b.a();
                        context2 = context;
                        str = BlockAndTagNumberActivity.this.mIsFromDialer ? "Unblock by smart search" : "Unblock by call log";
                    }
                    b.a(19, context2, "Behavior - UnBlock", str, null, null);
                }
                BlockAndTagNumberActivity.this.callBackAndFinish(-1, true);
            }
        }).setNegativeButton(context.getString(17039369), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.BlockAndTagNumberActivity.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                BlockAndTagNumberActivity.this.callBackAndFinish(0, false);
            }
        }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.contacts.activities.BlockAndTagNumberActivity.7
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                BlockAndTagNumberActivity.this.callBackAndFinish(0, false);
            }
        }).show();
    }

    public static String normalizeNumber(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((i == 0 && charAt == '+') || PhoneNumberUtils.isISODigit(charAt) || charAt == '#' || charAt == '*' || charAt == ',') {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public void doNegativeBlockNumber() {
        Log.d(TAG, "doNegativeBlockNumber");
        callBackAndFinish(0, false);
    }

    public void doNegativeTagNumber() {
        Log.d(TAG, "doNegativeTagNumber");
        callBackAndFinish(0, false);
    }

    public void doPositiveBlockNumber() {
        new ContentValues();
        String normalizeNumber = normalizeNumber(this.blockNumber);
        if (g.h(this)) {
            com.asus.blocklist.backwardcompatible.a.c(this, normalizeNumber);
        } else {
            g.e(this, normalizeNumber);
        }
        markNumber();
        callBackAndFinish(-1, true);
    }

    public void doPositiveTagNumber(boolean z, a.EnumC0038a aVar, String str) {
        Log.d(TAG, "doPositiveTagNumber. Block:" + z + ", BlockNumber:" + PhoneCapabilityTester.privacyLogCheck(this.blockNumber) + ", TagType:" + aVar.toString() + ", manualTag:" + str);
        this.tagType = aVar;
        this.manualTag = str;
        if (z) {
            com.android.contacts.f.b.a(this.mIsFromMessage, false, -1).show(getFragmentManager(), "block_notice_dialog");
        } else {
            doPositiveUnBlockNumber();
        }
    }

    public void doPositiveUnBlockNumber() {
        new ContentValues();
        String normalizeNumber = normalizeNumber(this.blockNumber);
        if (g.h(this)) {
            com.asus.blocklist.backwardcompatible.a.d(this, normalizeNumber);
        } else {
            g.f(this, normalizeNumber);
        }
        markNumber();
        callBackAndFinish(-1, false);
    }

    public void markNumber() {
        char c;
        if (this.tagType != a.EnumC0038a.DoNotTag) {
            c = this.tagType == a.EnumC0038a.HARASSING ? com.asus.a.a.b(this, this.blockNumber, "crank", null) ? (char) 1 : (char) 65535 : this.tagType == a.EnumC0038a.FRAUD ? com.asus.a.a.b(this, this.blockNumber, "fraud", null) ? (char) 1 : (char) 65535 : this.tagType == a.EnumC0038a.SALES_ADVERTISEMENT ? com.asus.a.a.b(this, this.blockNumber, "promote sales", null) ? (char) 1 : (char) 65535 : this.tagType == a.EnumC0038a.DELIVERY_SERVICE ? com.asus.a.a.b(this, this.blockNumber, "express", null) ? (char) 1 : (char) 65535 : this.tagType == a.EnumC0038a.HOUSE_PROPERTY ? com.asus.a.a.b(this, this.blockNumber, "house agent", null) ? (char) 1 : (char) 65535 : this.tagType == a.EnumC0038a.MANUAL_TAG ? com.asus.a.a.b(this, this.blockNumber, this.manualTag, null) ? (char) 1 : (char) 65535 : (char) 0;
        } else if (com.asus.a.a.a(this, this.blockNumber, null).l == 5) {
            c = 0;
        } else {
            char c2 = com.asus.a.a.d(this, this.blockNumber) ? (char) 1 : (char) 65535;
            c = c2;
            if (c2 == 65535) {
                c = c2;
                if (com.asus.a.a.a(this, this.blockNumber, null).l == 5) {
                    c = 1;
                }
            }
        }
        if (c == 1) {
            String format = String.format(getString(2131755241), this.blockNumber);
            PreferenceManager.getDefaultSharedPreferences(this).edit().putString("callguard_number_to_refresh", this.blockNumber + "," + System.currentTimeMillis()).apply();
            Toast.makeText(this, format, 0).show();
            Log.d(TAG, "Tag number succeeded");
        } else if (c == 65535) {
            Toast.makeText(this, String.format(getString(2131755240), this.blockNumber), 0).show();
            Log.d(TAG, "Tag number failed");
        } else {
            Log.d(TAG, "Tag number no updated");
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Log.d(TAG, "onBackPressed.");
        callBackAndFinish(0, false);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        switch (compoundButton.getId()) {
            case 2131296791:
                if (compoundButton.isChecked()) {
                    this.mIsNotToAsk = true;
                    return;
                } else {
                    this.mIsNotToAsk = false;
                    return;
                }
            case 2131297088:
                if (compoundButton.isChecked()) {
                    this.mIsMoveHistory = true;
                    return;
                } else {
                    this.mIsMoveHistory = false;
                    return;
                }
            default:
                return;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427436);
        Intent intent = getIntent();
        Bundle extras = intent.getExtras();
        boolean t = c.t(this);
        boolean booleanExtra = intent.getBooleanExtra(ASUS_CALLER_BLOCK_IS_SWIPE_TO_BLOCK, false);
        this.thread_id = intent.getLongExtra("ASUS_CALLER_BLOCK_THREAD_ID", 0L);
        this.blockNumber = extras.getString(ASUS_CALLER_BLOCK_NUMBER);
        this.mIsHidden = extras.getBoolean(ASUS_CALLER_BLOCK_DIALPAD_STATUS);
        this.block_contactId = extras.getLong(ASUS_CALLER_BLOCK_CONTACT_ID, 0L);
        this.block_contactName = extras.getString(ASUS_CALLER_BLOCK_CONTACT_DISPLAYNAME);
        this.mIsPhonicNumber = extras.getBoolean(ASUS_CALLER_BLOCK_IS_PHONIC_NUMBER, true);
        this.mIsFromMessage = extras.getBoolean(ASUS_CALLER_BLOCK_IS_FROM_MESSAGE, false);
        this.mBlock = extras.getBoolean(ASUS_CALLER_BLOCK_FLAG, true);
        this.mOnlyBlockNumber = extras.getBoolean(ASUS_CALLER_ONLY_BLOCK_NUMBER, false);
        this.mIsEndCallBlock = extras.getBoolean(ASUS_CALLER_BLOCK_IS_END_CALL_BLOCK, false);
        this.mIsFromDialer = extras.getBoolean(BLOCK_FROM_DIALER, false);
        Log.d(TAG, "onCreate number:" + AsusPhoneNumberUtils.getLastPartString(this.blockNumber) + ", mBlock ? " + this.mBlock + ", mIsEndCallBlock:" + this.mIsEndCallBlock);
        if (bundle == null) {
            if (com.asus.a.a.d() && !CallUtil.isUriNumber(this.blockNumber) && ((this.block_contactId == 0 || this.block_contactName == null) && this.mBlock && this.mIsPhonicNumber)) {
                a.a(extras).show(getFragmentManager(), "block_and_tag_dialog");
            } else if (this.mBlock) {
                if ((!this.mIsEndCallBlock || t) && !booleanExtra) {
                    launchBlockConfirmDialog(this);
                    return;
                }
                if (g.h(this)) {
                    com.asus.blocklist.backwardcompatible.a.c(this, this.blockNumber);
                } else {
                    g.e(this, this.blockNumber);
                }
                if (PhoneCapabilityTester.IsSystemApp()) {
                    if (this.mIsEndCallBlock) {
                        b.a();
                        b.a(19, this, "Behavior - Block", "Block by end call", null, null);
                    } else if (booleanExtra) {
                        b.a();
                        b.a(19, this, "Behavior - Block", "Block by overlay", null, null);
                    }
                }
                callBackAndFinish(-1, true);
            } else if (!this.mBlock) {
                launchUnBlockConfirmDialog(this);
            }
        } else if (com.asus.a.a.d() && !CallUtil.isUriNumber(this.blockNumber) && ((this.block_contactId == 0 || this.block_contactName == null) && this.mBlock && this.mIsPhonicNumber)) {
        } else {
            if (this.mBlock) {
                launchBlockConfirmDialog(this);
            } else if (!this.mBlock) {
                launchUnBlockConfirmDialog(this);
            }
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("rotate", true);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        setVisible(true);
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        Log.d(TAG, "onHomePressed.");
        callBackAndFinish(0, false);
    }

    public void setIsMoveHistory(boolean z) {
        this.mIsMoveHistory = z;
    }
}
