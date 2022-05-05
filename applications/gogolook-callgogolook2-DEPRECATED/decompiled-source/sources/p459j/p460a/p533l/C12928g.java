package p459j.p460a.p533l;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Messenger;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.block.BlockListRealmObject;
import gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p521j0.C12495d;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.p535o.C12998a;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p541n0.C13175m;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13938c4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14045k0;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14073m;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14116p0;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p583a5.C13895d;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.functions.Func1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.l.g */
/* loaded from: classes2-dex2jar.jar:j/a/l/g.class */
public class C12928g {

    /* renamed from: j.a.l.g$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/g$a.class */
    public class C12929a implements Single.OnSubscribe<C12942i> {

        /* renamed from: a */
        public final /* synthetic */ Context f29249a;

        /* renamed from: b */
        public final /* synthetic */ String f29250b;

        /* renamed from: c */
        public final /* synthetic */ String f29251c;

        /* renamed from: d */
        public final /* synthetic */ int f29252d;

        public C12929a(Context context, String str, String str2, int i) {
            this.f29249a = context;
            this.f29250b = str;
            this.f29251c = str2;
            this.f29252d = i;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super C12942i> singleSubscriber) {
            singleSubscriber.onSuccess(C12928g.this.m4996a(this.f29249a, this.f29250b, this.f29251c, this.f29252d));
        }
    }

    /* renamed from: j.a.l.g$b */
    /* loaded from: classes2-dex2jar.jar:j/a/l/g$b.class */
    public static final class C12930b implements Single.OnSubscribe<Object> {

        /* renamed from: a */
        public final /* synthetic */ String f29254a;

        /* renamed from: b */
        public final /* synthetic */ Context f29255b;

        /* renamed from: c */
        public final /* synthetic */ String f29256c;

        /* renamed from: d */
        public final /* synthetic */ int f29257d;

        /* renamed from: e */
        public final /* synthetic */ int f29258e;

        /* renamed from: f */
        public final /* synthetic */ String f29259f;

        public C12930b(String str, Context context, String str2, int i, int i2, String str3) {
            this.f29254a = str;
            this.f29255b = context;
            this.f29256c = str2;
            this.f29257d = i;
            this.f29258e = i2;
            this.f29259f = str3;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Object> singleSubscriber) {
            List<MySpamRealmObject> a = C13175m.m4470a(C13193p.m4437a("_e164"), C13193p.m4438a(this.f29254a), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
            if (a == null || a.isEmpty()) {
                C13625a.m3807a(this.f29255b, this.f29254a, this.f29259f, this.f29256c, this.f29257d, this.f29258e);
            } else {
                C13625a.m3808a(this.f29255b, this.f29254a, this.f29256c, this.f29257d, this.f29258e);
            }
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.l.g$c */
    /* loaded from: classes2-dex2jar.jar:j/a/l/g$c.class */
    public static final class C12931c implements Func1<Pair<Boolean, Boolean>, Single<Boolean>> {

        /* renamed from: a */
        public final /* synthetic */ Context f29260a;

        public C12931c(Context context) {
            this.f29260a = context;
        }

        /* renamed from: a */
        public Single<Boolean> call(Pair<Boolean, Boolean> pair) {
            if (((Boolean) pair.first).booleanValue()) {
                C14687h a = C14687h.m861a(this.f29260a, C14206w4.m2225a((int) R$string.block_already_saved), 1);
                a.m863a(17);
                a.m858c();
            }
            return Single.just(pair.second);
        }
    }

    /* renamed from: j.a.l.g$d */
    /* loaded from: classes2-dex2jar.jar:j/a/l/g$d.class */
    public static final class CallableC12932d implements Callable<Pair<Boolean, Boolean>> {

        /* renamed from: a */
        public final /* synthetic */ boolean f29261a;

        /* renamed from: b */
        public final /* synthetic */ Context f29262b;

        /* renamed from: c */
        public final /* synthetic */ String f29263c;

        /* renamed from: d */
        public final /* synthetic */ String f29264d;

        /* renamed from: e */
        public final /* synthetic */ DataUserReport.Source f29265e;

        /* renamed from: f */
        public final /* synthetic */ String f29266f;

        /* renamed from: g */
        public final /* synthetic */ int f29267g;

        /* renamed from: h */
        public final /* synthetic */ int f29268h;

        public CallableC12932d(boolean z, Context context, String str, String str2, DataUserReport.Source source, String str3, int i, int i2) {
            this.f29261a = z;
            this.f29262b = context;
            this.f29263c = str;
            this.f29264d = str2;
            this.f29265e = source;
            this.f29266f = str3;
            this.f29267g = i;
            this.f29268h = i2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0150  */
        @Override // java.util.concurrent.Callable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.util.Pair<java.lang.Boolean, java.lang.Boolean> call() throws java.lang.Exception {
            /*
                Method dump skipped, instructions count: 370
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p533l.C12928g.CallableC12932d.call():android.util.Pair");
        }
    }

    /* renamed from: j.a.l.g$e */
    /* loaded from: classes2-dex2jar.jar:j/a/l/g$e.class */
    public static final class C12933e implements Single.OnSubscribe<ArrayList<C12943j>> {

        /* renamed from: a */
        public final /* synthetic */ String f29269a;

        /* renamed from: b */
        public final /* synthetic */ int f29270b;

        /* renamed from: c */
        public final /* synthetic */ String f29271c;

        public C12933e(String str, int i, String str2) {
            this.f29269a = str;
            this.f29270b = i;
            this.f29271c = str2;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super ArrayList<C12943j>> singleSubscriber) {
            singleSubscriber.onSuccess(C12928g.m4981b(this.f29269a, this.f29270b, this.f29271c));
        }
    }

    /* renamed from: j.a.l.g$f */
    /* loaded from: classes2-dex2jar.jar:j/a/l/g$f.class */
    public static final class C12934f implements Action1<ArrayList<C12943j>> {

        /* renamed from: a */
        public final /* synthetic */ String f29272a;

        /* renamed from: b */
        public final /* synthetic */ Context f29273b;

        /* renamed from: c */
        public final /* synthetic */ DataUserReport.Source f29274c;

        /* renamed from: d */
        public final /* synthetic */ View.OnClickListener f29275d;

        /* renamed from: j.a.l.g$f$a */
        /* loaded from: classes2-dex2jar.jar:j/a/l/g$f$a.class */
        public class DialogInterface$OnClickListenerC12935a implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ ArrayList f29276a;

            /* renamed from: b */
            public final /* synthetic */ String f29277b;

            public DialogInterface$OnClickListenerC12935a(ArrayList arrayList, String str) {
                this.f29276a = arrayList;
                this.f29277b = str;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                ArrayList arrayList = this.f29276a;
                C12934f fVar = C12934f.this;
                C12928g.m4980b(arrayList, fVar.f29272a, this.f29277b, fVar.f29274c);
                C14687h.m861a(C12934f.this.f29273b, C14206w4.m2225a((int) R$string.blocklist_delete_successful_toast), 1).m858c();
                View.OnClickListener onClickListener = C12934f.this.f29275d;
                if (onClickListener != null) {
                    onClickListener.onClick(null);
                }
            }
        }

        /* renamed from: j.a.l.g$f$b */
        /* loaded from: classes2-dex2jar.jar:j/a/l/g$f$b.class */
        public class DialogInterface$OnClickListenerC12936b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC12936b(C12934f fVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C14037j3.m2731a().mo2704a(new C14148s0(3, -1));
            }
        }

        public C12934f(String str, Context context, DataUserReport.Source source, View.OnClickListener onClickListener) {
            this.f29272a = str;
            this.f29273b = context;
            this.f29274c = source;
            this.f29275d = onClickListener;
        }

        /* renamed from: a */
        public void call(ArrayList<C12943j> arrayList) {
            String l = C14108o4.m2474l(this.f29272a);
            arrayList.addAll(C12998a.m4832k().m4847b(l));
            arrayList.addAll(C12944k.m4947d().m4957a(l));
            if (C12928g.m4986a(l)) {
                arrayList.add(new C12943j(2, MyApplication.m29013o().getString(R$string.blockhistory_reason_other_ddd_short)));
            }
            StringBuilder sb = new StringBuilder();
            int size = arrayList.size();
            if (size == 1) {
                sb.append(arrayList.get(0).f29298d);
            } else {
                int i = 0;
                while (i < size) {
                    int i2 = i + 1;
                    sb.append(String.format(C14206w4.m2225a((int) R$string.blocklist_delete_blocknumber_option), Integer.valueOf(i2), arrayList.get(i).f29298d));
                    if (i != size - 1) {
                        sb.append("\n");
                    }
                    i = i2;
                }
            }
            DialogC14618f fVar = new DialogC14618f(this.f29273b);
            fVar.setTitle(C14206w4.m2225a((int) R$string.unblock_confirm_dialog_title));
            fVar.m998b(this.f29273b.getString(R$string.unblock_confirm_dialog_content, sb.toString()));
            fVar.m997b(C14206w4.m2225a((int) R$string.unblock_btn_yes), new DialogInterface$OnClickListenerC12935a(arrayList, l));
            fVar.m1002a(C14206w4.m2225a((int) R$string.unblock_btn_no), new DialogInterface$OnClickListenerC12936b(this));
            fVar.show();
        }
    }

    /* renamed from: j.a.l.g$g */
    /* loaded from: classes2-dex2jar.jar:j/a/l/g$g.class */
    public static final class DialogInterface$OnClickListenerC12937g implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f29279a;

        public DialogInterface$OnClickListenerC12937g(Context context) {
            this.f29279a = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13895d.m3111c(this.f29279a, "spam");
        }
    }

    /* renamed from: j.a.l.g$h */
    /* loaded from: classes2-dex2jar.jar:j/a/l/g$h.class */
    public static final class DialogInterface$OnClickListenerC12938h implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: j.a.l.g$i */
    /* loaded from: classes2-dex2jar.jar:j/a/l/g$i.class */
    public static class C12939i {

        /* renamed from: a */
        public static final C12928g f29280a = new C12928g(null);
    }

    public C12928g() {
    }

    public /* synthetic */ C12928g(C12929a aVar) {
        this();
    }

    /* renamed from: a */
    public static Dialog m4990a(Context context, boolean z, String str, @Nullable HandlerC12947l lVar, int i, boolean z2, DataUserReport dataUserReport, ReportDialogActivity.EnumC4379w wVar, boolean z3, C14241a.EnumC14244c cVar, String str2, String str3, int i2) {
        String l = C14108o4.m2474l(str);
        if (lVar != null) {
            lVar.mo4942b();
        }
        Intent intent = new Intent(context, ReportDialogActivity.class);
        Bundle bundle = new Bundle();
        boolean z4 = true;
        bundle.putBoolean("block", true);
        bundle.putString("blockE164", l);
        bundle.putString("blockNumber", str);
        bundle.putBoolean("fromCallEnd", z2);
        bundle.putInt("blockCtype", i);
        bundle.putBoolean("blockIsforceblock", z);
        bundle.putString("dataUserReport", DataUserReport.m28451k(dataUserReport));
        bundle.putSerializable("reportDialogType", wVar);
        bundle.putBoolean("isFromMainActionBlock", z3);
        bundle.putSerializable("userReportType", cVar);
        bundle.putInt("smsReportFilterType", i2);
        if (lVar != null) {
            bundle.putParcelable("blockHandler", new Messenger(lVar));
        }
        if (TextUtils.isEmpty(str2) || !C13891a.m3143s()) {
            z4 = false;
        }
        if (z4) {
            bundle.putString("smsReportConversationId", str2);
            bundle.putInt("smsReportSource", 2);
            bundle.putString("smsReportSmsContent", str3);
        }
        intent.putExtras(bundle);
        intent.setFlags(268435456);
        context.startActivity(intent);
        return null;
    }

    /* renamed from: a */
    public static C12928g m5000a() {
        return C12939i.f29280a;
    }

    /* renamed from: a */
    public static Single<Boolean> m4992a(Context context, boolean z, int i, String str, String str2, String str3, int i2, DataUserReport.Source source) {
        if (str3.equals("OTHER")) {
            str3 = "";
        }
        return Single.fromCallable(new CallableC12932d(z, context, str, str2, source, str3, i, i2)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).flatMap(new C12931c(context));
    }

    @WorkerThread
    /* renamed from: a */
    public static void m4999a(Context context, int i, String str, String str2, String str3, int i2) {
        C14081m3.m2610a(new C12930b(str2, context, str3, i, i2, str));
    }

    /* renamed from: a */
    public static void m4998a(Context context, String str) {
        C13625a.m3792c(context, str);
    }

    /* renamed from: a */
    public static void m4997a(Context context, String str, int i, String str2, @Nullable View.OnClickListener onClickListener, DataUserReport.Source source) {
        C14081m3.m2609a(new C12933e(str, i, str2), Schedulers.m0io(), AndroidSchedulers.mainThread(), new C12934f(str, context, source, onClickListener));
    }

    /* renamed from: a */
    public static void m4991a(Context context, boolean z, DataUserReport.Source source) {
        List<BlockListRealmObject> a = C13032a.m4748a(C13193p.m4437a("_type"), C13193p.m4438a(4), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
        if (a == null || a.isEmpty()) {
            C13625a.m3819a(context, 4, "", 3, "", (String) null, 1, source);
        } else {
            BlockListRealmObject blockListRealmObject = a.get(0);
            if (blockListRealmObject.get_status() == null || blockListRealmObject.get_status().intValue() == 2) {
                C13625a.m3817a(context, 4, "", "", 3, (String) null, 1, source);
            } else {
                C14687h.m861a(context, C14206w4.m2225a((int) R$string.block_already_saved), 1).m858c();
            }
        }
        if (z) {
            CallUtils.m26549c(context, 6);
        }
    }

    /* renamed from: a */
    public static void m4989a(Context context, boolean z, boolean z2, boolean z3, String str, @Nullable HandlerC12947l lVar, int i, DataUserReport dataUserReport) {
        m4987a(context, z, z2, z3, str, lVar, i, dataUserReport, null, false, true, null, null, null, -1);
    }

    /* renamed from: a */
    public static void m4988a(Context context, boolean z, boolean z2, boolean z3, String str, @Nullable HandlerC12947l lVar, int i, DataUserReport dataUserReport, ReportDialogActivity.EnumC4379w wVar, boolean z4, C14241a.EnumC14244c cVar) {
        m4987a(context, z, z2, z3, str, lVar, i, dataUserReport, wVar, z4, true, cVar, null, null, -1);
    }

    /* renamed from: a */
    public static void m4987a(Context context, boolean z, boolean z2, boolean z3, String str, @Nullable HandlerC12947l lVar, int i, DataUserReport dataUserReport, ReportDialogActivity.EnumC4379w wVar, boolean z4, boolean z5, C14241a.EnumC14244c cVar, String str2, String str3, int i2) {
        if (str.equals(C14206w4.m2225a((int) R$string.unknown_number)) || str.equals("")) {
            m4991a(context, z5, dataUserReport.m28461d());
            C14037j3.m2731a().mo2704a(new C14148s0(2, 0));
            if (lVar != null) {
                lVar.mo4944a((Object) null);
                return;
            }
            return;
        }
        String l = C14108o4.m2474l(str);
        if (!z3) {
            m4992a(context.getApplicationContext(), true, i, str, l, "", 0, dataUserReport.m28461d()).subscribe();
            C14037j3.m2731a().mo2704a(new C14148s0(2, 0));
            if (lVar != null) {
                lVar.mo4944a((Object) null);
            }
            if (z5) {
                CallUtils.m26549c(context, 2);
                return;
            }
            return;
        }
        m4990a(context, z2, str, lVar, i, z, dataUserReport, wVar, z4, cVar, str2, str3, i2);
    }

    /* renamed from: a */
    public static boolean m4994a(Context context, String str, String str2, String str3, String str4, int i, int i2, String str5, int i3) {
        return m4993a(context, str, str2, str3, str4, i, i2, str5, str5, i3);
    }

    /* renamed from: a */
    public static boolean m4993a(Context context, String str, String str2, String str3, String str4, int i, int i2, String str5, String str6, int i3) {
        String regionCodeForNumber;
        boolean z = false;
        boolean z2 = false;
        if (i != 3 && i3 != 3 && i != i3) {
            return false;
        }
        if (i2 == 1) {
            if (TextUtils.isEmpty(str6) || !C14093n4.m2569f(str6)) {
                String replaceAll = str3.replaceAll(" ", "");
                if (str.equals(str6) || str3.equals(str5) || replaceAll.equals(str5) || str3.equals(str6) || replaceAll.equals(str6)) {
                    z = true;
                }
                return z;
            }
            String replaceAll2 = str.replaceAll(" ", "");
            if (str.equals(str6) || replaceAll2.equals(str6)) {
                z2 = true;
            }
            return z2;
        } else if (i2 == 2) {
            return str.startsWith(str5) || str2.startsWith(str5) || str3.startsWith(str5) || str.replaceAll(" ", "").startsWith(str5) || str2.replaceAll(" ", "").startsWith(str5) || str3.replaceAll(" ", "").startsWith(str5);
        } else {
            if (i2 == 3) {
                return str4 != null && str4.toLowerCase(Locale.US).contains(str5.toLowerCase(Locale.US));
            }
            if (i2 == 4) {
                if (C14108o4.m2496a(str3, C14108o4.EnumC14110b.CALL) && (i == 1 || i == 3)) {
                    return true;
                }
                if (C14108o4.m2496a(str3, C14108o4.EnumC14110b.MESSAGE)) {
                    return i == 2 || i == 3;
                }
                return false;
            } else if (i2 != 5 || C12495d.m5972b().m5974a(str)) {
                return (i2 != 7 || C12495d.m5972b().m5974a(str)) ? i2 == 8 && C14073m.m2624d() && C14063l4.m2662d(str) : C14217x3.m2146e(context, str) == null;
            } else {
                PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
                try {
                    Phonenumber.PhoneNumber f = C14108o4.m2480f(str);
                    if (f == null || !instance.isValidNumber(f) || (regionCodeForNumber = instance.getRegionCodeForNumber(f)) == null) {
                        return false;
                    }
                    return !regionCodeForNumber.equalsIgnoreCase(C14017g4.m2810n().toUpperCase(Locale.US));
                } catch (Exception e) {
                    C14080m2.m2612a((Throwable) e);
                    return false;
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m4986a(String str) {
        if (!C14073m.m2627b()) {
            return false;
        }
        String b = C13915b3.m3056b("DDDSetting", (String) null);
        String b2 = C13915b3.m3056b("DDDSetting1", (String) null);
        if (!str.startsWith("+55")) {
            return false;
        }
        String substring = str.substring(3, 5);
        boolean isEmpty = TextUtils.isEmpty(b);
        boolean isEmpty2 = TextUtils.isEmpty(b2);
        if (!isEmpty && !isEmpty2) {
            boolean z = false;
            if (!b.equals(substring)) {
                z = false;
                if (!b2.equals(substring)) {
                    z = true;
                }
            }
            return z;
        } else if (isEmpty || b.equals(substring)) {
            return !isEmpty2 && !b2.equals(substring);
        } else {
            return true;
        }
    }

    @WorkerThread
    /* renamed from: b */
    public static ArrayList<C12943j> m4981b(String str, int i, String str2) {
        String str3;
        String str4;
        String str5;
        Context o = MyApplication.m29013o();
        ArrayList<C12943j> arrayList = new ArrayList<>();
        String str6 = "";
        if (str != null) {
            str5 = C14108o4.m2474l(str);
            str4 = C14108o4.m2473m(str);
            str3 = str;
        } else {
            str3 = "";
            str4 = str3;
            str5 = str3;
        }
        List<BlockListRealmObject> a = C13032a.m4748a(C13193p.m4437a("_status"), C13193p.m4438a(2), C13193p.m4439a(C13193p.EnumC13194a.NOT_EQUAL_TO), "_updatetime", Sort.DESCENDING);
        if (a != null && !a.isEmpty()) {
            for (BlockListRealmObject blockListRealmObject : a) {
                long id = blockListRealmObject.getId();
                int intValue = blockListRealmObject.get_type().intValue();
                String str7 = blockListRealmObject.get_e164();
                String str8 = blockListRealmObject.get_number();
                String str9 = blockListRealmObject.get_reason();
                int intValue2 = blockListRealmObject.get_kind().intValue();
                int intValue3 = blockListRealmObject.get_ccat().intValue() != 0 ? blockListRealmObject.get_ccat().intValue() : 0;
                if (intValue == 1) {
                    String a2 = C14093n4.m2580a(o, str9, Integer.valueOf(String.valueOf(intValue3)).intValue());
                    str6 = C14217x3.m2160b(a2) ? str8 : str8 + " (" + a2 + ")";
                } else if (intValue == 2) {
                    str6 = String.format(C14206w4.m2225a((int) R$string.block_startswith), str7);
                } else if (intValue == 3) {
                    str6 = String.format(C14206w4.m2225a((int) R$string.block_keyword), str7);
                } else if (intValue == 5) {
                    str6 = C14206w4.m2225a((int) R$string.block_international);
                } else if (intValue == 7) {
                    str6 = C14206w4.m2225a((int) R$string.blocklist_menu_outof_contact);
                } else if (intValue == 4) {
                    str6 = C14206w4.m2225a((int) R$string.unknown_number);
                } else if (intValue == 8) {
                    str6 = C14206w4.m2225a((int) R$string.blocklist_hklist);
                }
                if (!C14217x3.m2160b(str6) && m4993a(o, str3, str4, str5, str2, i, intValue, str7, str8, intValue2)) {
                    C12943j jVar = new C12943j(0, str6);
                    jVar.f29296b = String.valueOf(id);
                    jVar.f29297c = intValue;
                    arrayList.add(jVar);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static void m4980b(ArrayList<C12943j> arrayList, String str, String str2, DataUserReport.Source source) {
        Iterator<C12943j> it = arrayList.iterator();
        while (it.hasNext()) {
            C12943j next = it.next();
            int i = next.f29295a;
            if (i == 1) {
                C12998a.m4832k().m4852a(next);
                C14037j3.m2731a().mo2704a(new C14045k0());
            } else if (i == 2) {
                C13915b3.m3055b("pref_block_other_ddd", false);
                C14037j3.m2731a().mo2704a(new C14116p0());
            } else if (i == 3) {
                C12944k.m4947d().m4958a(next);
                C14037j3.m2731a().mo2704a(new C14116p0());
            }
        }
        C13625a.m3805a(MyApplication.m29013o(), arrayList, str, str2, source);
        C14037j3.m2731a().mo2704a(new C14148s0(3, 0));
    }

    /* renamed from: d */
    public static void m4978d(Context context, String str, String str2, int i) {
        if (C11052i.m10328e().m10329d(str).m28373W()) {
            C13915b3.m3055b(str2, false);
            C13938c4.m3007a(context, C14206w4.m2225a((int) R$string.sharedialog_title), C14206w4.m2225a((int) R$string.sharedialog_content), C14206w4.m2225a((int) R$string.sharedialog_yes), new DialogInterface$OnClickListenerC12937g(context), C14206w4.m2225a((int) R$string.sharedialog_no), new DialogInterface$OnClickListenerC12938h());
        }
    }

    /* renamed from: a */
    public C12942i m4996a(Context context, String str, String str2, int i) {
        synchronized (this) {
            if (i == 2) {
                if (!C12810o.m5234k()) {
                    return new C12942i(false, null, 0, 0);
                }
            }
            return m4995a(context, str, str2, i, false, C13032a.m4745b(str, str == null ? "" : C14108o4.m2474l(str)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x0044, code lost:
        continue;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p459j.p460a.p533l.C12942i m4995a(android.content.Context r12, java.lang.String r13, java.lang.String r14, int r15, boolean r16, java.util.List<gogolook.callgogolook2.realm.obj.block.BlockListRealmObject> r17) {
        /*
            Method dump skipped, instructions count: 805
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p533l.C12928g.m4995a(android.content.Context, java.lang.String, java.lang.String, int, boolean, java.util.List):j.a.l.i");
    }

    /* renamed from: a */
    public boolean m4985a(@NonNull String str, int i) {
        String l = C14108o4.m2474l(str);
        String m = C14108o4.m2473m(str);
        List<BlockListRealmObject> a = C13032a.m4751a(str, l);
        if (a == null) {
            return false;
        }
        for (BlockListRealmObject blockListRealmObject : a) {
            if (m4993a(MyApplication.m29013o(), str, m, l, null, i, blockListRealmObject.get_type().intValue(), blockListRealmObject.get_e164(), blockListRealmObject.get_number(), blockListRealmObject.get_kind().intValue())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public C12942i m4982b(Context context, String str, String str2, int i) {
        C12942i a = m4996a(context, str, str2, i);
        if (a.m4960d()) {
            boolean c = C14063l4.m2667c(str);
            a.m4963a(c);
            a.m4965a(c ? CallStats.BlockType.NONE : CallStats.BlockType.BLOCK);
        }
        return a;
    }

    @WorkerThread
    /* renamed from: c */
    public Single<C12942i> m4979c(Context context, String str, String str2, int i) {
        return Single.create(new C12929a(context, str, str2, i));
    }
}
