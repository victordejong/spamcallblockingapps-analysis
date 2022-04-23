package p459j.p460a.p461a0;
/* renamed from: j.a.a0.e */
/* loaded from: classes2-dex2jar.jar:j/a/a0/e.class */
public enum EnumC11047e {
    Ndp,
    SmsDialog,
    SmsLog,
    CallLog,
    CallDialogInPre,
    CallDialogOutPre,
    CallDialogIn,
    CallDialogOut,
    CallEndDialogIn,
    CallEndDialogOut,
    ContactList,
    Other,
    Widget,
    Favorite,
    Conversation,
    Unsearched;

    /* renamed from: a */
    public boolean m10365a() {
        return this == CallDialogInPre || this == CallDialogIn || this == CallDialogOutPre || this == CallDialogOut;
    }

    /* renamed from: b */
    public boolean m10364b() {
        return this == CallEndDialogIn || this == CallEndDialogOut;
    }
}
