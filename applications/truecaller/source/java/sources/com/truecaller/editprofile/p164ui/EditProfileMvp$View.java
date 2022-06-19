package com.truecaller.editprofile.p164ui;

import android.content.Intent;
import android.net.Uri;
import java.text.DateFormat;
import java.util.Date;
import kotlin.Metadata;
/* renamed from: com.truecaller.editprofile.ui.EditProfileMvp$View */
/* loaded from: classes9-dex2jar.jar:com/truecaller/editprofile/ui/EditProfileMvp$View.class */
public interface EditProfileMvp$View {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0016\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0017"}, d2 = {"Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;", "", "<init>", "(Ljava/lang/String;I)V", "FIRST_NAME", "LAST_NAME", "PHONE_NUMBER", "SECONDARY_PHONE_NUMBER", "EMAIL", "BIRTH_DAY", "GENDER", "ADDRESS_SECTION_TITLE", "ADDRESS_STREET", "ADDRESS_ZIP_CODE", "ADDRESS_CITY", "ADDRESS_COUNTRY", "ABOUT_SECTION_TITLE", "ABOUT_COMPANY", "ABOUT_JOB_TITLE", "ABOUT_WEBSITE", "ABOUT_ME", "ABOUT_TAG", "SECTION_BUSINESS", "editprofile_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.editprofile.ui.EditProfileMvp$View$FormElements */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/editprofile/ui/EditProfileMvp$View$FormElements.class */
    public enum FormElements {
        FIRST_NAME,
        LAST_NAME,
        PHONE_NUMBER,
        SECONDARY_PHONE_NUMBER,
        EMAIL,
        BIRTH_DAY,
        GENDER,
        ADDRESS_SECTION_TITLE,
        ADDRESS_STREET,
        ADDRESS_ZIP_CODE,
        ADDRESS_CITY,
        ADDRESS_COUNTRY,
        ABOUT_SECTION_TITLE,
        ABOUT_COMPANY,
        ABOUT_JOB_TITLE,
        ABOUT_WEBSITE,
        ABOUT_ME,
        ABOUT_TAG,
        SECTION_BUSINESS
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;", "", "<init>", "(Ljava/lang/String;I)V", "CREATE_NEW_VIDEO", "VISIT_YOUR_VIDEO", "editprofile_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.editprofile.ui.EditProfileMvp$View$VideoCallerIdProfileAction */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction.class */
    public enum VideoCallerIdProfileAction {
        CREATE_NEW_VIDEO,
        VISIT_YOUR_VIDEO
    }

    /* renamed from: A2 */
    void mo14064A2(String str, String str2);

    /* renamed from: Ax */
    void mo14063Ax(boolean z);

    /* renamed from: Bb */
    void mo14062Bb();

    /* renamed from: Cr */
    void mo14061Cr(String str);

    /* renamed from: Dn */
    void mo14060Dn(int i, String str, String str2);

    /* renamed from: Dt */
    void mo14059Dt();

    /* renamed from: Ew */
    void mo14058Ew();

    /* renamed from: Fm */
    void mo14057Fm();

    /* renamed from: Gr */
    void mo14056Gr(String str);

    /* renamed from: Gu */
    void mo14055Gu();

    /* renamed from: Hf */
    void mo14054Hf(String str);

    /* renamed from: Kc */
    void mo14053Kc(String str);

    /* renamed from: L6 */
    void mo14052L6();

    /* renamed from: M5 */
    void mo14051M5(String str, int i);

    /* renamed from: Mv */
    void mo14050Mv();

    /* renamed from: N0 */
    void mo14049N0();

    /* renamed from: Nn */
    void mo14048Nn(boolean z);

    /* renamed from: Ov */
    void mo14046Ov();

    /* renamed from: Pw */
    void mo14044Pw();

    /* renamed from: Q0 */
    void mo14043Q0();

    /* renamed from: Qj */
    void mo14041Qj();

    /* renamed from: Ru */
    void mo14039Ru(boolean z);

    /* renamed from: Sf */
    void mo14037Sf();

    /* renamed from: Sk */
    void mo14036Sk();

    /* renamed from: Tf */
    void mo14034Tf(String str);

    /* renamed from: Ua */
    void mo14031Ua(int i, String str);

    /* renamed from: Wf */
    void mo14028Wf(int i, String str);

    /* renamed from: Wq */
    void mo14027Wq(int i, VideoCallerIdProfileAction videoCallerIdProfileAction);

    /* renamed from: Xe */
    void mo14025Xe(String str);

    /* renamed from: Xj */
    void mo14024Xj(String str);

    /* renamed from: Yf */
    void mo14022Yf(String str);

    /* renamed from: Yg */
    void mo14021Yg(String str);

    /* renamed from: Zs */
    void mo14019Zs(Date date, DateFormat dateFormat);

    /* renamed from: ah */
    void mo14017ah(String str);

    /* renamed from: ao */
    void mo14016ao();

    /* renamed from: ca */
    void mo14012ca();

    /* renamed from: ch */
    void mo14011ch(String str);

    /* renamed from: dv */
    void mo14009dv(String str);

    /* renamed from: dw */
    void mo14008dw();

    /* renamed from: ei */
    void mo14006ei(String str);

    /* renamed from: es */
    void mo14005es(String str);

    /* renamed from: ey */
    void mo14004ey();

    /* renamed from: f2 */
    void mo14003f2(String str);

    /* renamed from: fh */
    void mo14001fh();

    /* renamed from: he */
    void mo13999he(String str);

    /* renamed from: iv */
    void mo13997iv();

    /* renamed from: js */
    void mo13995js(ErrorField errorField);

    /* renamed from: jv */
    void mo13994jv(String str);

    /* renamed from: k */
    boolean mo13993k(String str);

    /* renamed from: kr */
    void mo13991kr();

    /* renamed from: lk */
    void mo13989lk();

    /* renamed from: m */
    void mo13988m(String str);

    /* renamed from: md */
    void mo13986md(boolean z);

    /* renamed from: nb */
    void mo13984nb(Long l);

    /* renamed from: o */
    void mo13983o(String str);

    /* renamed from: pz */
    void mo13980pz();

    /* renamed from: qf */
    void mo13978qf(Uri uri);

    /* renamed from: qs */
    void mo13977qs(Date date, DateFormat dateFormat);

    /* renamed from: r6 */
    void mo13976r6(String str);

    /* renamed from: r9 */
    void mo13975r9(Intent intent);

    /* renamed from: sc */
    void mo13972sc(String str);

    void setPhoneNumber(String str);

    /* renamed from: t */
    void mo13971t();

    /* renamed from: tn */
    void mo13970tn(int i, int i2, int i3, long j);

    /* renamed from: u */
    void mo13969u(Uri uri);

    /* renamed from: vb */
    void mo13968vb();

    /* renamed from: vy */
    void mo13967vy(String str);

    /* renamed from: wd */
    void mo13966wd();

    /* renamed from: wp */
    void mo13965wp(String str);

    /* renamed from: xf */
    void mo13964xf();

    /* renamed from: yi */
    void mo13963yi();
}
