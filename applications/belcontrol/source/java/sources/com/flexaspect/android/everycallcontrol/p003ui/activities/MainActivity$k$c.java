package com.flexaspect.android.everycallcontrol.p003ui.activities;

import p000.w91;
/* JADX WARN: Init of enum l can be incorrect */
/* JADX WARN: Init of enum m can be incorrect */
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.MainActivity$k$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c.class */
public enum MainActivity$k$c {
    DIALOG_TYPE_CALLS_BLOCKED(2131821769, i61.a_leave_review_N_blocked_calls),
    DIALOG_TYPE_NUMBERS_DIALED(2131821771, i61.a_leave_review_N_placed_calls),
    DIALOG_TYPE_MESSAGES_BLOCKED(2131821770, i61.a_leave_review_N_sms),
    DIALOG_TYPE_FIRST_CALL_BLOCKED(2131821768, i61.a_leave_review_N_blocked_calls, -1, r0, r0, r0, r0),
    DIALOG_TYPE_3RD_BLOCKED(2131820799, i61.a_promt_to_change_blockmode, -1, w91.EnumC1708a.CHANGE_BLOCK_MODE, MainActivity$k$b.DISCONNECT, MainActivity$k$b.VOICEMAIL, r0);
    

    /* renamed from: n */
    public static int f2804n;

    /* renamed from: a */
    public int f2806a;

    /* renamed from: b */
    public int f2807b;

    /* renamed from: c */
    public int f2808c;

    /* renamed from: d */
    public int f2809d;

    /* renamed from: f */
    public w91.EnumC1708a f2810f;

    /* renamed from: g */
    public MainActivity$k$b[] f2811g;

    static {
        w91.EnumC1708a enumC1708a = w91.EnumC1708a.LEAVE_REVIEW;
        MainActivity$k$b mainActivity$k$b = MainActivity$k$b.YES;
        MainActivity$k$b mainActivity$k$b2 = MainActivity$k$b.NO;
        MainActivity$k$b mainActivity$k$b3 = MainActivity$k$b.CANCEL;
        f2804n = 0;
        for (MainActivity$k$c mainActivity$k$c : values()) {
            f2804n = mainActivity$k$c.f2806a | f2804n;
        }
    }

    MainActivity$k$c(int i, int i2) {
        this(i, i2, 2131821661, w91.EnumC1708a.LEAVE_REVIEW, MainActivity$k$b.LEAVE_A_REVIEW, MainActivity$k$b.NEEDS_WORK, MainActivity$k$b.CANCEL);
    }

    MainActivity$k$c(int i, int i2, int i3, w91.EnumC1708a enumC1708a, MainActivity$k$b... mainActivity$k$bArr) {
        this.f2806a = 1 << ordinal();
        this.f2807b = i;
        this.f2809d = i3;
        this.f2808c = i2;
        this.f2811g = mainActivity$k$bArr;
        this.f2810f = enumC1708a;
    }
}
