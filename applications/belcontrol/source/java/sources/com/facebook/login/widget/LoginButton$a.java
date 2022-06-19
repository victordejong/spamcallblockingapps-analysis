package com.facebook.login.widget;
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$a.class */
public class LoginButton$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f2562a;

    /* renamed from: b */
    public final /* synthetic */ LoginButton f2563b;

    /* renamed from: com.facebook.login.widget.LoginButton$a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$a$a.class */
    public class RunnableC0353a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ mm0 f2564a;

        public RunnableC0353a(mm0 mm0Var) {
            LoginButton$a.this = r4;
            this.f2564a = mm0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            LoginButton.n(LoginButton$a.this.f2563b, this.f2564a);
        }
    }

    public LoginButton$a(LoginButton loginButton, String str) {
        this.f2563b = loginButton;
        this.f2562a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        LoginButton.o(this.f2563b).runOnUiThread(new RunnableC0353a(nm0.o(this.f2562a, false)));
    }
}
