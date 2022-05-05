package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.contacts.util.Constants;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PermissionsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.vcard.VCardConstants;
import com.asus.privatecontacts.b.b;
import com.asus.privatecontacts.e;
import com.asus.privatecontacts.provider.a;
import com.asus.updatesdk.BuildConfig;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailCallogActivity.class */
public class ContactDetailCallogActivity extends e implements SharedPreferences.OnSharedPreferenceChangeListener, View.OnClickListener, AdapterView.OnItemClickListener {
    public static final String EXTRA_CONTACT = "private_contact";
    public static final String EXTRA_CONTACT_ID = "contact_id";
    public static final String EXTRA_NAME = "name";
    private static final String KEY_FILTER_INDEX = "filter_index";
    boolean isSim1Exsist;
    boolean isSim2Exsist;
    TextView mActionbarContainer;
    private ListView mAllHistoryListView;
    private ListView mCallLogsListView;
    private Context mContext;
    private View mFilterHeader;
    private ListView mFilterListView;
    private TextView mFilterTextView;
    private ListView mMsgListView;
    private PopupWindow mPopupWindow;
    private SharedPreferences mSimPrefs;
    private static final String TAG = ContactDetailCallogActivity.class.getSimpleName();
    private static Uri NORMAL_SMS_CONTENT_URI = Uri.parse("content://sms");
    private static Uri NORMAL_MMS_SMS_CONVERSATION_URI = Uri.parse("content://mms-sms/conversations");
    private static Uri PRIVATE_SMS_CONTENT_URI = Uri.parse("content://private-sms");
    private static Uri PRIVATE_MMS_SMS_CONVERSATION_URI = Uri.parse("content://private-mms-sms/conversations");
    private static Uri PRIVATE_CALL_LOGS_URI = a.AbstractC0087a.f3061a;
    private static Uri PRIVATE_DATA_URI = a.b.f3062a;
    private static Uri SMS_CONTENT_URI = NORMAL_SMS_CONTENT_URI;
    private static Uri MMS_SMS_CONVERSATION_URI = NORMAL_MMS_SMS_CONVERSATION_URI;
    private static Uri CALL_LOGS_URI = CallLog.Calls.CONTENT_URI;
    private static Uri DATA_URI = ContactsContract.Data.CONTENT_URI;
    private String name = BuildConfig.FLAVOR;
    private long contact_id = -1;
    private final int FILTER_ALL = 0;
    private final int FILTER_CALL = 1;
    private final int FILTER_MSG = 2;
    private int mFilterClickID = 0;
    private AllHistoryAdapter mAllHistoryAdapter = null;
    private CallLogsAdapter mCallLogsAdapter = null;
    private MsgAdapter mMsgAdapter = null;
    private ArrayList<String> mNumberList = new ArrayList<>();
    private List<Map<String, Object>> mAllHistoryList = new ArrayList();
    private List<Map<String, Object>> mCallLogsList = new ArrayList();
    private List<Map<String, Object>> mMsgList = new ArrayList();
    private List<Map<String, Object>> mSmsList = new ArrayList();
    private List<Map<String, Object>> mMmsList = new ArrayList();
    private AsynLoadTask mTask = null;
    private Dialog mProgressDialog = null;
    private final String CALLLOG = "CALL_LOGS";
    private final String SMS = "SMS";
    private final String MMS = "MMS";
    private final String TYPE_OUT = "OutGoing";
    private final String TYPE_IN = "InComing";
    private final String TYPE_MISS = "Missed";
    private final String MAP_KEY_ID = "ID";
    private final String MAP_KEY_TIME_MILLIS = "TIME_MILLIS";
    private final String MAP_KEY_TIME = "TIME";
    private final String MAP_KEY_DATE = "DATE";
    private final String MAP_KEY_PHONE = "PHONE";
    private final String MAP_KEY_DETAIL = "DETAIL";
    private final String MAP_KEY_TYPE = VCardConstants.PARAM_TYPE;
    private final String MAP_KEY_WHICH = "WHICH";
    private final String MAP_KEY_SIM_INFOR = "SIM_INFOR";
    private boolean isDualSim = false;
    private boolean isUseTwoPane = false;
    private String[] mPhones = null;
    private boolean isPrivateContact = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailCallogActivity$AllHistoryAdapter.class */
    public class AllHistoryAdapter extends BaseAdapter {
        List<Map<String, Object>> _allHistoryList = new ArrayList();

        public AllHistoryAdapter(Context context) {
            ContactDetailCallogActivity.this.mContext = context;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this._allHistoryList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            if (view == null) {
                view = LayoutInflater.from(ContactDetailCallogActivity.this.mContext).inflate(2131427445, (ViewGroup) null);
                viewHolder = new ViewHolder();
                viewHolder.all_type_image = (ImageView) view.findViewById(2131296337);
                viewHolder.all_phone = (TextView) view.findViewById(2131296335);
                viewHolder.all_duration_or_msg = (TextView) view.findViewById(2131296330);
                viewHolder.all_time = (TextView) view.findViewById(2131296336);
                viewHolder.all_date = (TextView) view.findViewById(2131296329);
                viewHolder.item_type = (ImageView) view.findViewById(2131296977);
                viewHolder.item_sim_infor = (ImageView) view.findViewById(2131296976);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            String str = null;
            String str2 = null;
            String str3 = BuildConfig.FLAVOR;
            String str4 = BuildConfig.FLAVOR;
            String str5 = BuildConfig.FLAVOR;
            String str6 = BuildConfig.FLAVOR;
            Object obj = null;
            if (i < this._allHistoryList.size()) {
                str = this._allHistoryList.get(i).get("WHICH").toString();
                str2 = this._allHistoryList.get(i).get(VCardConstants.PARAM_TYPE).toString();
                str3 = this._allHistoryList.get(i).get("PHONE").toString();
                str4 = this._allHistoryList.get(i).get("DETAIL").toString();
                str5 = this._allHistoryList.get(i).get("TIME").toString();
                str6 = this._allHistoryList.get(i).get("DATE").toString();
                obj = this._allHistoryList.get(i).get("SIM_INFOR");
            } else {
                Log.e(ContactDetailCallogActivity.TAG, ">>> CallLogsAdapter indexout of bound, position: " + i + ", size: " + this._allHistoryList.size());
            }
            ContactDetailCallogActivity.this.bindAllTypeImage(viewHolder.all_type_image, str);
            ContactDetailCallogActivity.this.bindItemTypeImage(viewHolder.item_type, str2);
            viewHolder.all_phone.setText(str3);
            viewHolder.all_duration_or_msg.setText(str4);
            viewHolder.all_time.setText(str5);
            viewHolder.all_date.setText(str6);
            if (!ContactDetailCallogActivity.this.isDualSim || !ContactDetailCallogActivity.this.isSim1Exsist || !ContactDetailCallogActivity.this.isSim2Exsist) {
                viewHolder.item_sim_infor.setVisibility(8);
            } else {
                viewHolder.item_sim_infor.setVisibility(0);
                ContactDetailCallogActivity.this.bindSimInforImage(viewHolder.item_sim_infor, obj == null ? null : obj.toString());
            }
            if (!str.equals("CALL_LOGS") || !PhoneCapabilityTester.isCMCCSku()) {
                viewHolder.all_duration_or_msg.setVisibility(0);
            } else {
                viewHolder.all_duration_or_msg.setVisibility(8);
            }
            return view;
        }

        public void setData(List<Map<String, Object>> list) {
            if (list != null) {
                this._allHistoryList.clear();
                this._allHistoryList.addAll(list);
            }
            notifyDataSetChanged();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailCallogActivity$AsynLoadTask.class */
    private class AsynLoadTask extends AsyncTask<Integer, Integer, Integer> {
        private AsynLoadTask() {
        }

        private void addToList(List<Map<String, Object>> list, List<Map<String, Object>> list2, int i) {
            HashMap hashMap = new HashMap();
            String obj = list.get(i).get("ID").toString();
            String obj2 = list.get(i).get("TIME_MILLIS").toString();
            String obj3 = list.get(i).get("TIME").toString();
            String obj4 = list.get(i).get("DATE").toString();
            String obj5 = list.get(i).get("PHONE") != null ? list.get(i).get("PHONE").toString() : BuildConfig.FLAVOR;
            String obj6 = list.get(i).get("DETAIL").toString();
            String obj7 = list.get(i).get(VCardConstants.PARAM_TYPE).toString();
            String obj8 = list.get(i).get("WHICH").toString();
            String obj9 = list.get(i).get("SIM_INFOR").toString();
            hashMap.put("ID", obj);
            hashMap.put("TIME_MILLIS", obj2);
            hashMap.put("TIME", obj3);
            hashMap.put("DATE", obj4);
            hashMap.put("PHONE", obj5);
            hashMap.put("DETAIL", obj6);
            hashMap.put(VCardConstants.PARAM_TYPE, obj7);
            hashMap.put("WHICH", obj8);
            hashMap.put("SIM_INFOR", obj9);
            list2.add(hashMap);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String formatDuration(long r9) {
            /*
                r8 = this;
                r0 = 0
                r11 = r0
                r0 = r9
                r13 = r0
                r0 = r9
                r1 = 60
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x001c
                r0 = r9
                r1 = 60
                long r0 = r0 / r1
                r11 = r0
                r0 = r9
                r1 = r11
                r2 = 60
                long r1 = r1 * r2
                long r0 = r0 - r1
                r13 = r0
            L_0x001c:
                r0 = r8
                com.android.contacts.activities.ContactDetailCallogActivity r0 = com.android.contacts.activities.ContactDetailCallogActivity.this
                android.content.Context r0 = com.android.contacts.activities.ContactDetailCallogActivity.access$1700(r0)
                r1 = 2131755234(0x7f1000e2, float:1.9141342E38)
                r2 = 2
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                r5 = r11
                java.lang.Long r5 = java.lang.Long.valueOf(r5)
                r3[r4] = r5
                r3 = r2
                r4 = 1
                r5 = r13
                java.lang.Long r5 = java.lang.Long.valueOf(r5)
                r3[r4] = r5
                java.lang.String r0 = r0.getString(r1, r2)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.ContactDetailCallogActivity.AsynLoadTask.formatDuration(long):java.lang.String");
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0097, code lost:
            if (r12 != null) goto L_0x00ef;
         */
        /* JADX WARN: Not initialized variable reg: 10, insn: 0x00e5: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:40:0x00e5 */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00da  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String getAddressNumber(int r8) {
            /*
                Method dump skipped, instructions count: 252
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.ContactDetailCallogActivity.AsynLoadTask.getAddressNumber(int):java.lang.String");
        }

        private String getCallLogType(int i) {
            String str;
            switch (i) {
                case 1:
                    str = "InComing";
                    break;
                case 2:
                    str = "OutGoing";
                    break;
                case 3:
                    str = "Missed";
                    break;
                default:
                    str = BuildConfig.FLAVOR;
                    break;
            }
            return str;
        }

        private String getDate(long j) {
            String str;
            Date date = new Date(j);
            String format = new SimpleDateFormat("M/dd, E").format(new Date(System.currentTimeMillis()));
            String format2 = new SimpleDateFormat("M/dd, E").format(new Date(System.currentTimeMillis() - 86400000));
            String format3 = new SimpleDateFormat("M/dd, E").format(date);
            if (format3.equals(format)) {
                str = ContactDetailCallogActivity.this.getResources().getString(2131755113);
            } else {
                str = format3;
                if (format3.equals(format2)) {
                    str = ContactDetailCallogActivity.this.getResources().getString(2131755115);
                }
            }
            return str;
        }

        private String getDuration(long j) {
            int i = ((int) (j / 1000)) % 60;
            int i2 = (int) ((j / 60000) % 60);
            int i3 = (int) ((j / 3600000) % 24);
            return i3 <= 0 ? i2 + "m " + i + "s " : i3 + "h " + i2 + "m " + i + "s ";
        }

        private String getMmsText(String str) {
            BufferedReader bufferedReader;
            InputStream inputStream;
            Throwable th;
            InputStream inputStream2;
            BufferedReader bufferedReader2;
            Uri parse = Uri.parse("content://mms/part/" + str);
            StringBuilder sb = new StringBuilder();
            try {
                inputStream2 = ContactDetailCallogActivity.this.getContentResolver().openInputStream(parse);
                if (inputStream2 != null) {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(inputStream2, "UTF-8"));
                        try {
                            String readLine = bufferedReader.readLine();
                            while (true) {
                                bufferedReader2 = bufferedReader;
                                if (readLine == null) {
                                    break;
                                }
                                sb.append(readLine);
                                readLine = bufferedReader.readLine();
                            }
                        } catch (IOException e) {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e2) {
                                }
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                            return sb.toString();
                        } catch (Throwable th2) {
                            th = th2;
                            inputStream = inputStream2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e3) {
                                    throw th;
                                }
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            throw th;
                        }
                    } catch (IOException e4) {
                        bufferedReader = null;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = null;
                        inputStream = inputStream2;
                    }
                } else {
                    bufferedReader2 = null;
                }
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e5) {
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
            } catch (IOException e6) {
                bufferedReader = null;
                inputStream2 = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = null;
                inputStream = null;
            }
            return sb.toString();
        }

        private String getMsgLogType(int i) {
            String str;
            switch (i) {
                case 1:
                    str = "InComing";
                    break;
                case 2:
                    str = "OutGoing";
                    break;
                default:
                    str = BuildConfig.FLAVOR;
                    break;
            }
            return str;
        }

        private String getTime(long j) {
            return PhoneCapabilityTester.getCallLogTime(ContactDetailCallogActivity.this.mContext, j);
        }

        private String shortText(String str) {
            String replace = str.replace("\n", " ");
            String str2 = replace;
            if (replace.length() >= 20) {
                str2 = replace.substring(0, 20) + " ...";
            }
            return str2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't wrap try/catch for region: R(57:498|4|(1:6)(1:76)|7|8|(3:477|10|(5:12|13|14|(4:15|16|(4:18|(4:20|(3:21|22|(1:505)(2:24|(3:506|26|27)))|28|(1:30)(1:77))|78|79)|31)|504))|33|(1:35)|501|36|(1:38)(2:88|89)|39|40|41|(1:43)(1:90)|44|486|45|(3:488|47|(41:49|50|(4:51|(2:55|(1:57)(1:91))|58|59)|507|61|(1:63)|64|65|66|(3:68|69|(2:70|(3:72|(2:74|509)(2:205|510)|75)(1:508)))(0)|206|(2:(13:210|(1:214)|475|216|(1:218)(1:230)|219|(1:221)(1:231)|222|223|(2:224|(3:226|(2:228|515)(1:516)|229))|208|(0)(0)|494)|551)|232|(1:234)|104|105|106|(6:499|108|(1:241)|110|111|112)|502|250|251|(2:(23:255|(1:257)(3:323|324|(1:326)(1:471))|496|258|(2:260|(4:261|481|262|(7:264|265|266|267|268|(1:522)(5:518|270|271|272|(5:520|274|275|276|523)(8:519|327|328|329|330|331|332|524))|521)(1:517)))(2:544|333)|334|335|336|337|338|339|340|341|342|343|344|(7:348|349|350|(22:352|353|354|355|356|357|358|359|360|361|362|363|364|365|366|367|368|369|370|371|372|526)(1:527)|373|345|346)|525|374|(3:542|376|548)(1:547)|546|492|253)|543)|416|(1:418)|382|383|384|385|(3:388|(3:529|390|391)(2:419|(3:421|(2:423|531)(2:425|532)|424)(1:530))|386)|528|470|392|(2:(2:396|394)|533)(2:(2:428|426)|534)|429|(3:432|(3:537|434|435)(2:441|(3:443|(2:445|538)(2:447|539)|446)(1:535))|430)|536|469|436|(2:(2:440|438)|540)(2:(2:450|448)|541)|451|452))|476|61|(0)|64|65|66|(0)(0)|206|(0)|232|(0)|104|105|106|(0)|502|250|251|(0)|416|(0)|382|383|384|385|(1:386)|528|470|392|(0)(0)|429|(1:430)|536|469|436|(0)(0)|451|452) */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x0389, code lost:
            if (r8 != null) goto L_0x038c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:114:0x038c, code lost:
            r10 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:116:0x0394, code lost:
            if (r8.moveToNext() == false) goto L_0x09d7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:121:0x03a0, code lost:
            r0 = new java.util.HashMap();
         */
        /* JADX WARN: Code restructure failed: missing block: B:123:0x03a7, code lost:
            r0 = r8.getString(r8.getColumnIndex("thread_id"));
         */
        /* JADX WARN: Code restructure failed: missing block: B:125:0x03ba, code lost:
            r0 = r8.getLong(r8.getColumnIndex("date"));
         */
        /* JADX WARN: Code restructure failed: missing block: B:127:0x03cd, code lost:
            r0 = getTime(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:129:0x03d7, code lost:
            r0 = getDate(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:131:0x03e1, code lost:
            r13 = r8.getString(r8.getColumnIndex("address"));
         */
        /* JADX WARN: Code restructure failed: missing block: B:134:0x03f8, code lost:
            if (android.text.TextUtils.isEmpty(r13) != false) goto L_0x040f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:138:0x0402, code lost:
            if (com.android.contacts.util.CallUtil.isUriNumber(r13) != false) goto L_0x040f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:141:0x0407, code lost:
            r13 = android.telephony.PhoneNumberUtils.formatNumber(r13, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:144:0x0411, code lost:
            r0 = shortText(r8.getString(r8.getColumnIndex("body")));
         */
        /* JADX WARN: Code restructure failed: missing block: B:146:0x0428, code lost:
            r0 = getMsgLogType(r8.getInt(r8.getColumnIndex("type")));
         */
        /* JADX WARN: Code restructure failed: missing block: B:149:0x0442, code lost:
            if (com.android.contacts.util.PhoneCapabilityTester.IsAsusDevice() == false) goto L_0x0990;
         */
        /* JADX WARN: Code restructure failed: missing block: B:152:0x0447, code lost:
            r0 = r8.getColumnIndex("imsi");
         */
        /* JADX WARN: Code restructure failed: missing block: B:154:0x0455, code lost:
            if (r0 == (-1)) goto L_0x0915;
         */
        /* JADX WARN: Code restructure failed: missing block: B:156:0x045a, code lost:
            r11 = com.android.contacts.simcardmanage.b.a(r8.getString(r0));
         */
        /* JADX WARN: Code restructure failed: missing block: B:165:0x0481, code lost:
            android.util.Log.d(com.android.contacts.activities.ContactDetailCallogActivity.TAG, "imsi index:" + r0 + " simIndex:" + r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:174:0x04b6, code lost:
            android.util.Log.d(com.android.contacts.activities.ContactDetailCallogActivity.TAG, "mNumberList.size():" + r7.this$0.mNumberList.size());
            r16 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:178:0x04df, code lost:
            if (r16 >= r7.this$0.mNumberList.size()) goto L_0x038c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:182:0x04fb, code lost:
            if (android.telephony.PhoneNumberUtils.compare(r13, android.telephony.PhoneNumberUtils.stripSeparators((java.lang.String) r7.this$0.mNumberList.get(r16))) == false) goto L_0x0594;
         */
        /* JADX WARN: Code restructure failed: missing block: B:185:0x0500, code lost:
            r0.put("ID", r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:187:0x050e, code lost:
            r0.put("TIME_MILLIS", java.lang.Long.valueOf(r0));
         */
        /* JADX WARN: Code restructure failed: missing block: B:189:0x051f, code lost:
            r0.put("TIME", r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:191:0x052d, code lost:
            r0.put("DATE", r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:193:0x053b, code lost:
            r0.put("PHONE", r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:195:0x0549, code lost:
            r0.put("DETAIL", r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:197:0x0557, code lost:
            r0.put(com.android.vcard.VCardConstants.PARAM_TYPE, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:199:0x0565, code lost:
            r0.put("WHICH", "SMS");
         */
        /* JADX WARN: Code restructure failed: missing block: B:201:0x0574, code lost:
            r0.put("SIM_INFOR", java.lang.Integer.valueOf(r11));
         */
        /* JADX WARN: Code restructure failed: missing block: B:203:0x0585, code lost:
            r7.this$0.mSmsList.add(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:204:0x0594, code lost:
            r16 = r16 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:215:0x0648, code lost:
            if (r10 != null) goto L_0x064b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:244:0x0780, code lost:
            r10 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:245:0x0782, code lost:
            r13.printStackTrace();
         */
        /* JADX WARN: Code restructure failed: missing block: B:246:0x0788, code lost:
            r10 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:247:0x078a, code lost:
            if (r8 != null) goto L_0x078d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:248:0x078d, code lost:
            r8.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:249:0x0794, code lost:
            r10 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:278:0x0917, code lost:
            r0 = r8.getColumnIndex("sub_id");
         */
        /* JADX WARN: Code restructure failed: missing block: B:279:0x0924, code lost:
            if (r0 <= 0) goto L_0x0ed8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:281:0x0929, code lost:
            r16 = r8.getInt(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:285:0x0941, code lost:
            if (r16 != ((java.lang.Number) com.android.contacts.simcardmanage.b.a(1)).intValue()) goto L_0x0979;
         */
        /* JADX WARN: Code restructure failed: missing block: B:286:0x0944, code lost:
            r11 = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:295:0x0961, code lost:
            android.util.Log.d(com.android.contacts.activities.ContactDetailCallogActivity.TAG, "subId:" + r16);
         */
        /* JADX WARN: Code restructure failed: missing block: B:296:0x0974, code lost:
            r13 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:299:0x0987, code lost:
            if (r16 != ((java.lang.Number) com.android.contacts.simcardmanage.b.a(2)).intValue()) goto L_0x0ed2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:300:0x098a, code lost:
            r11 = 2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:303:0x0992, code lost:
            r0 = r8.getColumnIndex("sub_id");
         */
        /* JADX WARN: Code restructure failed: missing block: B:304:0x099f, code lost:
            if (r0 <= 0) goto L_0x09b3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:306:0x09a4, code lost:
            r11 = r8.getInt(r0) + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:308:0x09b5, code lost:
            r0 = r8.getColumnIndex("phone_id");
         */
        /* JADX WARN: Code restructure failed: missing block: B:309:0x09c2, code lost:
            if (r0 <= 0) goto L_0x0ecc;
         */
        /* JADX WARN: Code restructure failed: missing block: B:311:0x09c7, code lost:
            r11 = r8.getInt(r0) + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:312:0x09d7, code lost:
            r10 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:313:0x09da, code lost:
            if (r8 == null) goto L_0x0795;
         */
        /* JADX WARN: Code restructure failed: missing block: B:314:0x09dd, code lost:
            r8.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:315:0x09e4, code lost:
            r10 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:320:0x09f0, code lost:
            r8.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:454:0x0e72, code lost:
            r8 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:457:0x0e80, code lost:
            r13 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:458:0x0e81, code lost:
            r8 = r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:461:0x0e91, code lost:
            r13 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:472:0x0ecc, code lost:
            r11 = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:473:0x0ed2, code lost:
            r11 = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:474:0x0ed8, code lost:
            r16 = 0;
         */
        /* JADX WARN: Removed duplicated region for block: B:210:0x05e3 A[Catch: all -> 0x0e98, Exception -> 0x0eae, TryCatch #22 {Exception -> 0x0eae, all -> 0x0e98, blocks: (B:208:0x05da, B:210:0x05e3, B:212:0x0638, B:214:0x0640, B:216:0x064b, B:218:0x067f, B:221:0x068f, B:224:0x069c, B:226:0x06ab, B:228:0x06c4, B:229:0x0745, B:230:0x074b), top: B:494:0x05da }] */
        /* JADX WARN: Removed duplicated region for block: B:234:0x0763 A[Catch: all -> 0x02a1, TRY_ENTER, TRY_LEAVE, TryCatch #20 {, blocks: (B:4:0x0002, B:6:0x005e, B:8:0x0079, B:35:0x0116, B:36:0x011c, B:76:0x0255, B:83:0x0298, B:103:0x0350, B:105:0x0357, B:234:0x0763, B:238:0x0771, B:240:0x0778, B:248:0x078d, B:314:0x09dd, B:320:0x09f0, B:322:0x09f8, B:381:0x0b9d, B:384:0x0ba9, B:386:0x0be8, B:388:0x0c06, B:394:0x0c1f, B:396:0x0c30, B:406:0x0c6a, B:408:0x0c71, B:418:0x0c88, B:419:0x0c91, B:421:0x0ca2, B:423:0x0ce8, B:425:0x0d05, B:426:0x0d1f, B:428:0x0d30, B:430:0x0d53, B:432:0x0d71, B:438:0x0d8a, B:440:0x0d9b, B:441:0x0db5, B:443:0x0dc6, B:445:0x0e0c, B:447:0x0e29, B:448:0x0e43, B:450:0x0e54, B:10:0x009e, B:14:0x00aa, B:16:0x00b5, B:18:0x00c4, B:20:0x00d2, B:22:0x00e1, B:24:0x00e9, B:31:0x0105, B:77:0x0278, B:79:0x0280, B:81:0x0290), top: B:498:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:238:0x0771 A[Catch: all -> 0x02a1, TRY_ENTER, TryCatch #20 {, blocks: (B:4:0x0002, B:6:0x005e, B:8:0x0079, B:35:0x0116, B:36:0x011c, B:76:0x0255, B:83:0x0298, B:103:0x0350, B:105:0x0357, B:234:0x0763, B:238:0x0771, B:240:0x0778, B:248:0x078d, B:314:0x09dd, B:320:0x09f0, B:322:0x09f8, B:381:0x0b9d, B:384:0x0ba9, B:386:0x0be8, B:388:0x0c06, B:394:0x0c1f, B:396:0x0c30, B:406:0x0c6a, B:408:0x0c71, B:418:0x0c88, B:419:0x0c91, B:421:0x0ca2, B:423:0x0ce8, B:425:0x0d05, B:426:0x0d1f, B:428:0x0d30, B:430:0x0d53, B:432:0x0d71, B:438:0x0d8a, B:440:0x0d9b, B:441:0x0db5, B:443:0x0dc6, B:445:0x0e0c, B:447:0x0e29, B:448:0x0e43, B:450:0x0e54, B:10:0x009e, B:14:0x00aa, B:16:0x00b5, B:18:0x00c4, B:20:0x00d2, B:22:0x00e1, B:24:0x00e9, B:31:0x0105, B:77:0x0278, B:79:0x0280, B:81:0x0290), top: B:498:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:320:0x09f0 A[Catch: all -> 0x02a1, TRY_ENTER, TryCatch #20 {, blocks: (B:4:0x0002, B:6:0x005e, B:8:0x0079, B:35:0x0116, B:36:0x011c, B:76:0x0255, B:83:0x0298, B:103:0x0350, B:105:0x0357, B:234:0x0763, B:238:0x0771, B:240:0x0778, B:248:0x078d, B:314:0x09dd, B:320:0x09f0, B:322:0x09f8, B:381:0x0b9d, B:384:0x0ba9, B:386:0x0be8, B:388:0x0c06, B:394:0x0c1f, B:396:0x0c30, B:406:0x0c6a, B:408:0x0c71, B:418:0x0c88, B:419:0x0c91, B:421:0x0ca2, B:423:0x0ce8, B:425:0x0d05, B:426:0x0d1f, B:428:0x0d30, B:430:0x0d53, B:432:0x0d71, B:438:0x0d8a, B:440:0x0d9b, B:441:0x0db5, B:443:0x0dc6, B:445:0x0e0c, B:447:0x0e29, B:448:0x0e43, B:450:0x0e54, B:10:0x009e, B:14:0x00aa, B:16:0x00b5, B:18:0x00c4, B:20:0x00d2, B:22:0x00e1, B:24:0x00e9, B:31:0x0105, B:77:0x0278, B:79:0x0280, B:81:0x0290), top: B:498:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:388:0x0c06 A[Catch: all -> 0x02a1, TryCatch #20 {, blocks: (B:4:0x0002, B:6:0x005e, B:8:0x0079, B:35:0x0116, B:36:0x011c, B:76:0x0255, B:83:0x0298, B:103:0x0350, B:105:0x0357, B:234:0x0763, B:238:0x0771, B:240:0x0778, B:248:0x078d, B:314:0x09dd, B:320:0x09f0, B:322:0x09f8, B:381:0x0b9d, B:384:0x0ba9, B:386:0x0be8, B:388:0x0c06, B:394:0x0c1f, B:396:0x0c30, B:406:0x0c6a, B:408:0x0c71, B:418:0x0c88, B:419:0x0c91, B:421:0x0ca2, B:423:0x0ce8, B:425:0x0d05, B:426:0x0d1f, B:428:0x0d30, B:430:0x0d53, B:432:0x0d71, B:438:0x0d8a, B:440:0x0d9b, B:441:0x0db5, B:443:0x0dc6, B:445:0x0e0c, B:447:0x0e29, B:448:0x0e43, B:450:0x0e54, B:10:0x009e, B:14:0x00aa, B:16:0x00b5, B:18:0x00c4, B:20:0x00d2, B:22:0x00e1, B:24:0x00e9, B:31:0x0105, B:77:0x0278, B:79:0x0280, B:81:0x0290), top: B:498:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:394:0x0c1f A[Catch: all -> 0x02a1, LOOP:10: B:394:0x0c1f->B:396:0x0c30, LOOP_START, PHI: r16 
          PHI: (r16v8 int) = (r16v1 int), (r16v9 int) binds: [B:393:0x0c1c, B:396:0x0c30] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #20 {, blocks: (B:4:0x0002, B:6:0x005e, B:8:0x0079, B:35:0x0116, B:36:0x011c, B:76:0x0255, B:83:0x0298, B:103:0x0350, B:105:0x0357, B:234:0x0763, B:238:0x0771, B:240:0x0778, B:248:0x078d, B:314:0x09dd, B:320:0x09f0, B:322:0x09f8, B:381:0x0b9d, B:384:0x0ba9, B:386:0x0be8, B:388:0x0c06, B:394:0x0c1f, B:396:0x0c30, B:406:0x0c6a, B:408:0x0c71, B:418:0x0c88, B:419:0x0c91, B:421:0x0ca2, B:423:0x0ce8, B:425:0x0d05, B:426:0x0d1f, B:428:0x0d30, B:430:0x0d53, B:432:0x0d71, B:438:0x0d8a, B:440:0x0d9b, B:441:0x0db5, B:443:0x0dc6, B:445:0x0e0c, B:447:0x0e29, B:448:0x0e43, B:450:0x0e54, B:10:0x009e, B:14:0x00aa, B:16:0x00b5, B:18:0x00c4, B:20:0x00d2, B:22:0x00e1, B:24:0x00e9, B:31:0x0105, B:77:0x0278, B:79:0x0280, B:81:0x0290), top: B:498:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:406:0x0c6a A[Catch: all -> 0x02a1, TRY_ENTER, TryCatch #20 {, blocks: (B:4:0x0002, B:6:0x005e, B:8:0x0079, B:35:0x0116, B:36:0x011c, B:76:0x0255, B:83:0x0298, B:103:0x0350, B:105:0x0357, B:234:0x0763, B:238:0x0771, B:240:0x0778, B:248:0x078d, B:314:0x09dd, B:320:0x09f0, B:322:0x09f8, B:381:0x0b9d, B:384:0x0ba9, B:386:0x0be8, B:388:0x0c06, B:394:0x0c1f, B:396:0x0c30, B:406:0x0c6a, B:408:0x0c71, B:418:0x0c88, B:419:0x0c91, B:421:0x0ca2, B:423:0x0ce8, B:425:0x0d05, B:426:0x0d1f, B:428:0x0d30, B:430:0x0d53, B:432:0x0d71, B:438:0x0d8a, B:440:0x0d9b, B:441:0x0db5, B:443:0x0dc6, B:445:0x0e0c, B:447:0x0e29, B:448:0x0e43, B:450:0x0e54, B:10:0x009e, B:14:0x00aa, B:16:0x00b5, B:18:0x00c4, B:20:0x00d2, B:22:0x00e1, B:24:0x00e9, B:31:0x0105, B:77:0x0278, B:79:0x0280, B:81:0x0290), top: B:498:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:418:0x0c88 A[Catch: all -> 0x02a1, TRY_ENTER, TRY_LEAVE, TryCatch #20 {, blocks: (B:4:0x0002, B:6:0x005e, B:8:0x0079, B:35:0x0116, B:36:0x011c, B:76:0x0255, B:83:0x0298, B:103:0x0350, B:105:0x0357, B:234:0x0763, B:238:0x0771, B:240:0x0778, B:248:0x078d, B:314:0x09dd, B:320:0x09f0, B:322:0x09f8, B:381:0x0b9d, B:384:0x0ba9, B:386:0x0be8, B:388:0x0c06, B:394:0x0c1f, B:396:0x0c30, B:406:0x0c6a, B:408:0x0c71, B:418:0x0c88, B:419:0x0c91, B:421:0x0ca2, B:423:0x0ce8, B:425:0x0d05, B:426:0x0d1f, B:428:0x0d30, B:430:0x0d53, B:432:0x0d71, B:438:0x0d8a, B:440:0x0d9b, B:441:0x0db5, B:443:0x0dc6, B:445:0x0e0c, B:447:0x0e29, B:448:0x0e43, B:450:0x0e54, B:10:0x009e, B:14:0x00aa, B:16:0x00b5, B:18:0x00c4, B:20:0x00d2, B:22:0x00e1, B:24:0x00e9, B:31:0x0105, B:77:0x0278, B:79:0x0280, B:81:0x0290), top: B:498:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:426:0x0d1f A[Catch: all -> 0x02a1, LOOP:11: B:426:0x0d1f->B:428:0x0d30, LOOP_START, PHI: r11 
          PHI: (r11v8 int) = (r11v1 int), (r11v9 int) binds: [B:393:0x0c1c, B:428:0x0d30] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #20 {, blocks: (B:4:0x0002, B:6:0x005e, B:8:0x0079, B:35:0x0116, B:36:0x011c, B:76:0x0255, B:83:0x0298, B:103:0x0350, B:105:0x0357, B:234:0x0763, B:238:0x0771, B:240:0x0778, B:248:0x078d, B:314:0x09dd, B:320:0x09f0, B:322:0x09f8, B:381:0x0b9d, B:384:0x0ba9, B:386:0x0be8, B:388:0x0c06, B:394:0x0c1f, B:396:0x0c30, B:406:0x0c6a, B:408:0x0c71, B:418:0x0c88, B:419:0x0c91, B:421:0x0ca2, B:423:0x0ce8, B:425:0x0d05, B:426:0x0d1f, B:428:0x0d30, B:430:0x0d53, B:432:0x0d71, B:438:0x0d8a, B:440:0x0d9b, B:441:0x0db5, B:443:0x0dc6, B:445:0x0e0c, B:447:0x0e29, B:448:0x0e43, B:450:0x0e54, B:10:0x009e, B:14:0x00aa, B:16:0x00b5, B:18:0x00c4, B:20:0x00d2, B:22:0x00e1, B:24:0x00e9, B:31:0x0105, B:77:0x0278, B:79:0x0280, B:81:0x0290), top: B:498:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:432:0x0d71 A[Catch: all -> 0x02a1, TryCatch #20 {, blocks: (B:4:0x0002, B:6:0x005e, B:8:0x0079, B:35:0x0116, B:36:0x011c, B:76:0x0255, B:83:0x0298, B:103:0x0350, B:105:0x0357, B:234:0x0763, B:238:0x0771, B:240:0x0778, B:248:0x078d, B:314:0x09dd, B:320:0x09f0, B:322:0x09f8, B:381:0x0b9d, B:384:0x0ba9, B:386:0x0be8, B:388:0x0c06, B:394:0x0c1f, B:396:0x0c30, B:406:0x0c6a, B:408:0x0c71, B:418:0x0c88, B:419:0x0c91, B:421:0x0ca2, B:423:0x0ce8, B:425:0x0d05, B:426:0x0d1f, B:428:0x0d30, B:430:0x0d53, B:432:0x0d71, B:438:0x0d8a, B:440:0x0d9b, B:441:0x0db5, B:443:0x0dc6, B:445:0x0e0c, B:447:0x0e29, B:448:0x0e43, B:450:0x0e54, B:10:0x009e, B:14:0x00aa, B:16:0x00b5, B:18:0x00c4, B:20:0x00d2, B:22:0x00e1, B:24:0x00e9, B:31:0x0105, B:77:0x0278, B:79:0x0280, B:81:0x0290), top: B:498:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:438:0x0d8a A[Catch: all -> 0x02a1, LOOP:13: B:438:0x0d8a->B:440:0x0d9b, LOOP_START, PHI: r16 
          PHI: (r16v4 int) = (r16v3 int), (r16v5 int) binds: [B:437:0x0d87, B:440:0x0d9b] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #20 {, blocks: (B:4:0x0002, B:6:0x005e, B:8:0x0079, B:35:0x0116, B:36:0x011c, B:76:0x0255, B:83:0x0298, B:103:0x0350, B:105:0x0357, B:234:0x0763, B:238:0x0771, B:240:0x0778, B:248:0x078d, B:314:0x09dd, B:320:0x09f0, B:322:0x09f8, B:381:0x0b9d, B:384:0x0ba9, B:386:0x0be8, B:388:0x0c06, B:394:0x0c1f, B:396:0x0c30, B:406:0x0c6a, B:408:0x0c71, B:418:0x0c88, B:419:0x0c91, B:421:0x0ca2, B:423:0x0ce8, B:425:0x0d05, B:426:0x0d1f, B:428:0x0d30, B:430:0x0d53, B:432:0x0d71, B:438:0x0d8a, B:440:0x0d9b, B:441:0x0db5, B:443:0x0dc6, B:445:0x0e0c, B:447:0x0e29, B:448:0x0e43, B:450:0x0e54, B:10:0x009e, B:14:0x00aa, B:16:0x00b5, B:18:0x00c4, B:20:0x00d2, B:22:0x00e1, B:24:0x00e9, B:31:0x0105, B:77:0x0278, B:79:0x0280, B:81:0x0290), top: B:498:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:448:0x0e43 A[Catch: all -> 0x02a1, LOOP:14: B:448:0x0e43->B:450:0x0e54, LOOP_START, PHI: r11 
          PHI: (r11v4 int) = (r11v3 int), (r11v5 int) binds: [B:437:0x0d87, B:450:0x0e54] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #20 {, blocks: (B:4:0x0002, B:6:0x005e, B:8:0x0079, B:35:0x0116, B:36:0x011c, B:76:0x0255, B:83:0x0298, B:103:0x0350, B:105:0x0357, B:234:0x0763, B:238:0x0771, B:240:0x0778, B:248:0x078d, B:314:0x09dd, B:320:0x09f0, B:322:0x09f8, B:381:0x0b9d, B:384:0x0ba9, B:386:0x0be8, B:388:0x0c06, B:394:0x0c1f, B:396:0x0c30, B:406:0x0c6a, B:408:0x0c71, B:418:0x0c88, B:419:0x0c91, B:421:0x0ca2, B:423:0x0ce8, B:425:0x0d05, B:426:0x0d1f, B:428:0x0d30, B:430:0x0d53, B:432:0x0d71, B:438:0x0d8a, B:440:0x0d9b, B:441:0x0db5, B:443:0x0dc6, B:445:0x0e0c, B:447:0x0e29, B:448:0x0e43, B:450:0x0e54, B:10:0x009e, B:14:0x00aa, B:16:0x00b5, B:18:0x00c4, B:20:0x00d2, B:22:0x00e1, B:24:0x00e9, B:31:0x0105, B:77:0x0278, B:79:0x0280, B:81:0x0290), top: B:498:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:492:0x07b9 A[EXC_TOP_SPLITTER, LOOP:15: B:492:0x07b9->B:546:0x07b9, LOOP_START, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:494:0x05da A[EDGE_INSN: B:225:0x06a8->B:494:0x05da ?: BREAK  , EXC_TOP_SPLITTER, LOOP:16: B:494:0x05da->B:225:0x06a8, LOOP_START, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:499:0x0369 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0205 A[Catch: Exception -> 0x0343, all -> 0x076c, TRY_ENTER, TryCatch #18 {Exception -> 0x0343, all -> 0x076c, blocks: (B:36:0x011c, B:38:0x0122, B:41:0x0150, B:43:0x015e, B:63:0x0205, B:66:0x020f, B:68:0x0219, B:74:0x0235, B:75:0x024f, B:89:0x02b5, B:90:0x02e1, B:96:0x033a, B:98:0x0342, B:205:0x059a, B:206:0x05b7), top: B:501:0x011c }] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0219 A[Catch: Exception -> 0x0343, all -> 0x076c, TRY_LEAVE, TryCatch #18 {Exception -> 0x0343, all -> 0x076c, blocks: (B:36:0x011c, B:38:0x0122, B:41:0x0150, B:43:0x015e, B:63:0x0205, B:66:0x020f, B:68:0x0219, B:74:0x0235, B:75:0x024f, B:89:0x02b5, B:90:0x02e1, B:96:0x033a, B:98:0x0342, B:205:0x059a, B:206:0x05b7), top: B:501:0x011c }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Integer doInBackground(java.lang.Integer... r8) {
            /*
                Method dump skipped, instructions count: 3844
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.ContactDetailCallogActivity.AsynLoadTask.doInBackground(java.lang.Integer[]):java.lang.Integer");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Integer num) {
            super.onPostExecute((AsynLoadTask) num);
            if (!(ContactDetailCallogActivity.this == null || ContactDetailCallogActivity.this.isFinishing() || ContactDetailCallogActivity.this.mProgressDialog == null)) {
                ContactDetailCallogActivity.this.mProgressDialog.dismiss();
            }
            ContactDetailCallogActivity.this.mAllHistoryAdapter.setData(ContactDetailCallogActivity.this.mAllHistoryList);
            ContactDetailCallogActivity.this.mCallLogsAdapter.setData(ContactDetailCallogActivity.this.mCallLogsList);
            ContactDetailCallogActivity.this.mMsgAdapter.setData(ContactDetailCallogActivity.this.mMsgList);
            ContactDetailCallogActivity.this.mAllHistoryListView.setAdapter((ListAdapter) ContactDetailCallogActivity.this.mAllHistoryAdapter);
            ContactDetailCallogActivity.this.mCallLogsListView.setAdapter((ListAdapter) ContactDetailCallogActivity.this.mCallLogsAdapter);
            ContactDetailCallogActivity.this.mMsgListView.setAdapter((ListAdapter) ContactDetailCallogActivity.this.mMsgAdapter);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            if (ContactDetailCallogActivity.this.mProgressDialog == null) {
                ContactDetailCallogActivity.this.mProgressDialog = new Dialog(ContactDetailCallogActivity.this.mContext, 2131820892);
                ContactDetailCallogActivity.this.mProgressDialog.setContentView(2131427447);
                ContactDetailCallogActivity.this.mProgressDialog.setCancelable(false);
                ContactDetailCallogActivity.this.mProgressDialog.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailCallogActivity$CallLogsAdapter.class */
    public class CallLogsAdapter extends BaseAdapter {
        List<Map<String, Object>> _callLogsList = new ArrayList();

        public CallLogsAdapter(Context context) {
            ContactDetailCallogActivity.this.mContext = context;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this._callLogsList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            Object obj;
            String str;
            String str2;
            String obj2 = null;
            if (view == null) {
                view = LayoutInflater.from(ContactDetailCallogActivity.this.mContext).inflate(2131427445, (ViewGroup) null);
                viewHolder = new ViewHolder();
                viewHolder.all_type_image = (ImageView) view.findViewById(2131296337);
                viewHolder.all_phone = (TextView) view.findViewById(2131296335);
                viewHolder.all_duration_or_msg = (TextView) view.findViewById(2131296330);
                viewHolder.all_time = (TextView) view.findViewById(2131296336);
                viewHolder.all_date = (TextView) view.findViewById(2131296329);
                viewHolder.item_type = (ImageView) view.findViewById(2131296977);
                viewHolder.item_sim_infor = (ImageView) view.findViewById(2131296976);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            view.setBackgroundResource(2131034116);
            String str3 = BuildConfig.FLAVOR;
            String str4 = BuildConfig.FLAVOR;
            String str5 = BuildConfig.FLAVOR;
            String str6 = BuildConfig.FLAVOR;
            if (i < this._callLogsList.size()) {
                str2 = this._callLogsList.get(i).get("WHICH").toString();
                str = this._callLogsList.get(i).get(VCardConstants.PARAM_TYPE).toString();
                str3 = this._callLogsList.get(i).get("PHONE").toString();
                str4 = this._callLogsList.get(i).get("DETAIL").toString();
                str5 = this._callLogsList.get(i).get("TIME").toString();
                str6 = this._callLogsList.get(i).get("DATE").toString();
                obj = this._callLogsList.get(i).get("SIM_INFOR");
            } else {
                Log.e(ContactDetailCallogActivity.TAG, ">>> CallLogsAdapter indexout of bound, position: " + i + ", size: " + this._callLogsList.size());
                obj = null;
                str = null;
                str2 = null;
            }
            ContactDetailCallogActivity.this.bindAllTypeImage(viewHolder.all_type_image, str2);
            ContactDetailCallogActivity.this.bindItemTypeImage(viewHolder.item_type, str);
            viewHolder.all_phone.setText(str3);
            viewHolder.all_duration_or_msg.setText(str4);
            viewHolder.all_time.setText(str5);
            viewHolder.all_date.setText(str6);
            if (!ContactDetailCallogActivity.this.isDualSim || !ContactDetailCallogActivity.this.isSim1Exsist || !ContactDetailCallogActivity.this.isSim2Exsist) {
                viewHolder.item_sim_infor.setVisibility(8);
            } else {
                viewHolder.item_sim_infor.setVisibility(0);
                ContactDetailCallogActivity contactDetailCallogActivity = ContactDetailCallogActivity.this;
                ImageView imageView = viewHolder.item_sim_infor;
                if (obj != null) {
                    obj2 = obj.toString();
                }
                contactDetailCallogActivity.bindSimInforImage(imageView, obj2);
            }
            if (PhoneCapabilityTester.isCMCCSku()) {
                viewHolder.all_duration_or_msg.setVisibility(8);
            }
            return view;
        }

        public void setData(List<Map<String, Object>> list) {
            if (list != null) {
                this._callLogsList.clear();
                this._callLogsList.addAll(list);
            }
            notifyDataSetChanged();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailCallogActivity$LogType.class */
    public interface LogType {
        public static final int InComing = 1;
        public static final int Missed = 3;
        public static final int OutGoing = 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailCallogActivity$MsgAdapter.class */
    public class MsgAdapter extends BaseAdapter {
        List<Map<String, Object>> _msgList = new ArrayList();

        public MsgAdapter(Context context) {
            ContactDetailCallogActivity.this.mContext = context;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this._msgList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            Object obj;
            String str;
            String str2;
            String obj2 = null;
            if (view == null) {
                view = LayoutInflater.from(ContactDetailCallogActivity.this.mContext).inflate(2131427445, (ViewGroup) null);
                viewHolder = new ViewHolder();
                viewHolder.all_type_image = (ImageView) view.findViewById(2131296337);
                viewHolder.all_phone = (TextView) view.findViewById(2131296335);
                viewHolder.all_duration_or_msg = (TextView) view.findViewById(2131296330);
                viewHolder.all_time = (TextView) view.findViewById(2131296336);
                viewHolder.all_date = (TextView) view.findViewById(2131296329);
                viewHolder.item_type = (ImageView) view.findViewById(2131296977);
                viewHolder.item_sim_infor = (ImageView) view.findViewById(2131296976);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            view.setBackgroundResource(2131034116);
            String str3 = BuildConfig.FLAVOR;
            String str4 = BuildConfig.FLAVOR;
            String str5 = BuildConfig.FLAVOR;
            String str6 = BuildConfig.FLAVOR;
            if (i < this._msgList.size()) {
                str2 = this._msgList.get(i).get("WHICH").toString();
                str = this._msgList.get(i).get(VCardConstants.PARAM_TYPE).toString();
                str3 = this._msgList.get(i).get("PHONE").toString();
                str4 = this._msgList.get(i).get("DETAIL").toString();
                str5 = this._msgList.get(i).get("TIME").toString();
                str6 = this._msgList.get(i).get("DATE").toString();
                obj = this._msgList.get(i).get("SIM_INFOR");
            } else {
                Log.e(ContactDetailCallogActivity.TAG, ">>> MsgAdapter indexout of bound, position: " + i + ", size: " + this._msgList.size());
                obj = null;
                str = null;
                str2 = null;
            }
            ContactDetailCallogActivity.this.bindAllTypeImage(viewHolder.all_type_image, str2);
            ContactDetailCallogActivity.this.bindItemTypeImage(viewHolder.item_type, str);
            viewHolder.all_phone.setText(str3);
            viewHolder.all_duration_or_msg.setText(str4);
            viewHolder.all_time.setText(str5);
            viewHolder.all_date.setText(str6);
            if (!ContactDetailCallogActivity.this.isDualSim || !ContactDetailCallogActivity.this.isSim1Exsist || !ContactDetailCallogActivity.this.isSim2Exsist) {
                viewHolder.item_sim_infor.setVisibility(8);
            } else {
                viewHolder.item_sim_infor.setVisibility(0);
                ContactDetailCallogActivity contactDetailCallogActivity = ContactDetailCallogActivity.this;
                ImageView imageView = viewHolder.item_sim_infor;
                if (obj != null) {
                    obj2 = obj.toString();
                }
                contactDetailCallogActivity.bindSimInforImage(imageView, obj2);
            }
            return view;
        }

        public void setData(List<Map<String, Object>> list) {
            if (list != null) {
                this._msgList.clear();
                this._msgList.addAll(list);
            }
            notifyDataSetChanged();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailCallogActivity$ViewHolder.class */
    private static class ViewHolder {
        TextView all_date;
        TextView all_duration_or_msg;
        TextView all_phone;
        TextView all_time;
        ImageView all_type_image;
        ImageView item_sim_infor;
        ImageView item_type;

        private ViewHolder() {
            this.all_type_image = null;
            this.all_phone = null;
            this.all_duration_or_msg = null;
            this.all_time = null;
            this.all_date = null;
            this.item_type = null;
            this.item_sim_infor = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindAllTypeImage(ImageView imageView, String str) {
        if (str != null && imageView != null) {
            if (str.equals("CALL_LOGS")) {
                imageView.setImageResource(2131165326);
            } else {
                imageView.setImageResource(2131165345);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindItemTypeImage(ImageView imageView, String str) {
        if (str != null && imageView != null) {
            if (str.equals("InComing")) {
                imageView.setImageResource(2131165323);
            } else if (str.equals("Missed")) {
                imageView.setImageResource(2131165324);
            } else if (str.equals("OutGoing")) {
                imageView.setImageResource(2131165325);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void bindSimInforImage(android.widget.ImageView r4, java.lang.String r5) {
        /*
            r3 = this;
            r0 = 1
            r6 = r0
            boolean r0 = com.android.contacts.util.PhoneCapabilityTester.IsAsusDevice()
            if (r0 == 0) goto L_0x003a
            r0 = r3
            android.content.Context r0 = r0.mContext
            r1 = r5
            int r1 = java.lang.Integer.parseInt(r1)
            java.lang.String r0 = com.android.contacts.util.PhoneCapabilityTester.getCallLogSimIndexAsString(r0, r1)
            r7 = r0
        L_0x0015:
            r0 = r7
            if (r0 == 0) goto L_0x0087
            r0 = r4
            if (r0 == 0) goto L_0x0087
            r0 = r7
            java.lang.String r1 = "1"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0069
            r0 = r4
            r1 = 2131165281(0x7f070061, float:1.7944775E38)
            r0.setImageResource(r1)
        L_0x0030:
            r0 = r6
            if (r0 == 0) goto L_0x007e
            r0 = r4
            r1 = 0
            r0.setVisibility(r1)
        L_0x0039:
            return
        L_0x003a:
            r0 = r5
            r1 = 1
            java.lang.Object r1 = com.android.contacts.simcardmanage.b.a(r1)
            java.lang.String r1 = java.lang.String.valueOf(r1)
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0050
            java.lang.String r0 = "1"
            r7 = r0
            goto L_0x0015
        L_0x0050:
            r0 = r5
            r7 = r0
            r0 = r5
            r1 = 2
            java.lang.Object r1 = com.android.contacts.simcardmanage.b.a(r1)
            java.lang.String r1 = java.lang.String.valueOf(r1)
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0015
            java.lang.String r0 = "2"
            r7 = r0
            goto L_0x0015
        L_0x0069:
            r0 = r7
            java.lang.String r1 = "2"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0087
            r0 = r4
            r1 = 2131165283(0x7f070063, float:1.7944779E38)
            r0.setImageResource(r1)
            goto L_0x0030
        L_0x007e:
            r0 = r4
            r1 = 8
            r0.setVisibility(r1)
            goto L_0x0039
        L_0x0087:
            r0 = 0
            r6 = r0
            goto L_0x0030
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.ContactDetailCallogActivity.bindSimInforImage(android.widget.ImageView, java.lang.String):void");
    }

    private void setFilterSelected(int i) {
        if (i == 0) {
            this.mFilterTextView.setText(2131755654);
            this.mAllHistoryListView.setVisibility(0);
            this.mCallLogsListView.setVisibility(8);
            this.mMsgListView.setVisibility(8);
        } else if (i == 1) {
            this.mFilterTextView.setText(2131755655);
            this.mAllHistoryListView.setVisibility(8);
            this.mCallLogsListView.setVisibility(0);
            this.mMsgListView.setVisibility(8);
        } else {
            this.mFilterTextView.setText(2131755656);
            this.mAllHistoryListView.setVisibility(8);
            this.mCallLogsListView.setVisibility(8);
            this.mMsgListView.setVisibility(0);
        }
        this.mFilterClickID = i;
    }

    private void startCallDetailActivity(List<Map<String, Object>> list, int i) {
        long longValue = Long.valueOf(list.get(i).get("ID").toString()).longValue();
        String obj = list.get(i).get("PHONE").toString();
        try {
            Intent intent = new Intent();
            boolean z = getResources().getConfiguration().orientation == 2;
            if (!this.isUseTwoPane || !z) {
                intent.setComponent(new ComponentName("com.asus.contacts", "com.android.contacts.CallDetailActivity"));
                intent.putExtra("EXTRA_CALL_LOG_IDS", new long[]{longValue});
                intent.putExtra("CALL_LOG_NAME", this.name);
                intent.putExtra("CALL_LOG_NUMBER", obj);
                intent.putExtra("FROM_WHICH_TAB", "FROM_CALLLOG_TAB");
                ImplicitIntentsUtil.startActivityInApp(this.mContext, intent);
            } else {
                intent.setClass(this, DialtactsActivity.class);
                intent.putExtra("ConnectionHistory", true);
                intent.putExtra("number", obj);
                intent.putExtra("contactId", (int) this.contact_id);
                ImplicitIntentsUtil.startActivityInApp(this.mContext, intent);
                finish();
            }
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void startMsg(List<Map<String, Object>> list, int i) {
        String obj = list.get(i).get("ID").toString();
        try {
            if (com.asus.blocklist.a.c(this.mContext)) {
                ImplicitIntentsUtil.startActivityOutsideApp(this.mContext, new Intent("android.intent.action.VIEW", Uri.withAppendedPath(MMS_SMS_CONVERSATION_URI, obj)));
            } else {
                setStayPrivate(true);
                ImplicitIntentsUtil.startActivityOutsideApp(this.mContext, new Intent("android.intent.action.SENDTO", Uri.fromParts(Constants.SCHEME_SMSTO, list.get(i).get("PHONE").toString(), null)));
            }
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public PopupWindow makePopupWindow(Context context, View view) {
        this.mPopupWindow = new PopupWindow(context);
        Resources resources = context.getResources();
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427446, (ViewGroup) null, false);
        String[] strArr = PermissionsUtil.hasReadSmsPermissions(this.mContext) ? new String[]{resources.getString(2131755654), resources.getString(2131755655), resources.getString(2131755656)} : new String[]{resources.getString(2131755654), resources.getString(2131755655)};
        this.mFilterListView = (ListView) inflate.findViewById(2131296856);
        this.mFilterListView.setAdapter((ListAdapter) new ArrayAdapter<String>(context, 17367055, strArr) { // from class: com.android.contacts.activities.ContactDetailCallogActivity.1
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view2, ViewGroup viewGroup) {
                TextView textView = (TextView) super.getView(i, view2, viewGroup);
                textView.setTextColor(ContactDetailCallogActivity.this.getResources().getColor(2131034302));
                return textView;
            }
        });
        this.mFilterListView.setChoiceMode(1);
        this.mFilterListView.setItemChecked(this.mFilterClickID, true);
        this.mFilterListView.setOnItemClickListener(this);
        this.mPopupWindow.setHeight(-2);
        this.mPopupWindow.setWidth(-2);
        inflate.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        Drawable drawable = resources.getDrawable(2131165482);
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(2131099796);
        this.mPopupWindow.setBackgroundDrawable(drawable);
        this.mPopupWindow.setContentView(inflate);
        this.mPopupWindow.setOutsideTouchable(true);
        this.mPopupWindow.setFocusable(true);
        this.mPopupWindow.setTouchable(true);
        this.mPopupWindow.showAsDropDown(view, 0, -dimensionPixelSize);
        return this.mPopupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296350:
                makePopupWindow(this, view);
                return;
            default:
                return;
        }
    }

    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            RequestSMSPermissionsActivity.startPermissionActivity(this);
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            setContentView(2131427353);
            this.mContext = this;
            this.mSimPrefs = getSharedPreferences("asus_sim_setting", 0);
            this.mSimPrefs.registerOnSharedPreferenceChangeListener(this);
            Bundle extras = getIntent().getExtras();
            this.contact_id = extras.getLong(EXTRA_CONTACT_ID);
            this.name = extras.getString(EXTRA_NAME);
            ArrayList<String> stringArrayList = extras.getStringArrayList("phone_list");
            if (stringArrayList != null) {
                this.mPhones = (String[]) stringArrayList.toArray(new String[stringArrayList.size()]);
            }
            this.isPrivateContact = extras.getBoolean(EXTRA_CONTACT, false);
            if (this.isPrivateContact) {
                SMS_CONTENT_URI = PRIVATE_SMS_CONTENT_URI;
                MMS_SMS_CONVERSATION_URI = PRIVATE_MMS_SMS_CONVERSATION_URI;
                CALL_LOGS_URI = PRIVATE_CALL_LOGS_URI;
                DATA_URI = PRIVATE_DATA_URI;
            } else {
                SMS_CONTENT_URI = NORMAL_SMS_CONTENT_URI;
                MMS_SMS_CONVERSATION_URI = NORMAL_MMS_SMS_CONVERSATION_URI;
                CALL_LOGS_URI = CallLog.Calls.CONTENT_URI;
                DATA_URI = ContactsContract.Data.CONTENT_URI;
            }
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayShowHomeEnabled(false);
                actionBar.setDisplayHomeAsUpEnabled(true);
                actionBar.setDisplayShowTitleEnabled(true);
                actionBar.setDisplayShowCustomEnabled(true);
                actionBar.setTitle(getResources().getString(2131755436));
                actionBar.setSubtitle(this.name);
            }
            this.mFilterHeader = findViewById(2131296350);
            this.mFilterTextView = (TextView) findViewById(2131296348);
            if (!this.isPrivateContact || b.d(this)) {
                this.mFilterHeader.setOnClickListener(this);
            } else {
                this.mFilterHeader.setVisibility(8);
            }
            this.mAllHistoryListView = (ListView) findViewById(2131296332);
            this.mCallLogsListView = (ListView) findViewById(2131296475);
            this.mMsgListView = (ListView) findViewById(2131297089);
            if (!this.isPrivateContact) {
                this.mAllHistoryListView.setOnItemClickListener(this);
                this.mCallLogsListView.setOnItemClickListener(this);
                this.mMsgListView.setOnItemClickListener(this);
            }
            updateSimExistState();
            this.mAllHistoryAdapter = new AllHistoryAdapter(this.mContext);
            this.mCallLogsAdapter = new CallLogsAdapter(this.mContext);
            this.mMsgAdapter = new MsgAdapter(this.mContext);
            this.isUseTwoPane = PhoneCapabilityTester.isUsingTwoPanes(this);
            if (bundle != null) {
                this.mFilterClickID = bundle.getInt(KEY_FILTER_INDEX);
                setFilterSelected(this.mFilterClickID);
            }
            if (PhoneCapabilityTester.IsSystemApp()) {
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(18, (Activity) this, "Connection history", true);
                return;
            }
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(10, (Activity) this, "Connection history", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, android.app.Activity
    public void onDestroy() {
        if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
        }
        super.onDestroy();
        if (this.mSimPrefs != null) {
            this.mSimPrefs.unregisterOnSharedPreferenceChangeListener(this);
        }
        if (this.mPopupWindow != null) {
            this.mPopupWindow.dismiss();
            this.mPopupWindow = null;
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (adapterView == this.mFilterListView) {
            setFilterSelected(i);
            this.mPopupWindow.dismiss();
        } else if (adapterView == this.mAllHistoryListView) {
            if (i >= this.mAllHistoryList.size()) {
                return;
            }
            if (!this.mAllHistoryList.get(i).get("WHICH").toString().equals("CALL_LOGS")) {
                startMsg(this.mAllHistoryList, i);
            } else if (!this.isPrivateContact) {
                startCallDetailActivity(this.mAllHistoryList, i);
            }
        } else if (adapterView == this.mCallLogsListView) {
            startCallDetailActivity(this.mCallLogsList, i);
        } else if (adapterView == this.mMsgListView) {
            startMsg(this.mMsgList, i);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        this.mFilterClickID = bundle.getInt(KEY_FILTER_INDEX);
        setFilterSelected(this.mFilterClickID);
        super.onRestoreInstanceState(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(KEY_FILTER_INDEX, this.mFilterClickID);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (!com.android.contacts.simcardmanage.b.a(this)) {
            return;
        }
        if (str.equals("asushadIccCard1") || str.equals("asushadIccCard2") || str.equals("asusIsIccCardFlyMode1") || str.equals("asusIsIccCardFlyMode2")) {
            updateSimExistState();
            if (this.mFilterClickID == 0 && this.mAllHistoryAdapter != null) {
                this.mAllHistoryAdapter.notifyDataSetChanged();
            } else if (this.mFilterClickID == 1 && this.mCallLogsAdapter != null) {
                this.mCallLogsAdapter.notifyDataSetChanged();
            } else if (this.mMsgAdapter != null) {
                this.mMsgAdapter.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.isDualSim = com.android.contacts.simcardmanage.b.a(this);
        this.mTask = new AsynLoadTask();
        this.mTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Integer[0]);
    }

    public void updateSimExistState() {
        this.isSim1Exsist = PhoneCapabilityTester.isSimActive(this, 1);
        this.isSim2Exsist = PhoneCapabilityTester.isSimActive(this, 2);
    }
}
