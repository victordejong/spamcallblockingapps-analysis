package com.callapp.contacts.widget.tutorial;

import com.callapp.contacts.util.Predicate;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPageModel.class */
public class TutorialPageModel {

    /* renamed from: a */
    private final int f29487a;

    /* renamed from: b */
    private TutorialCommand f29488b;

    /* renamed from: c */
    private Predicate f29489c;

    /* renamed from: d */
    private CharSequence f29490d;

    /* renamed from: e */
    private CharSequence f29491e;

    /* renamed from: f */
    private CharSequence f29492f;

    /* renamed from: g */
    private CharSequence f29493g;

    /* renamed from: h */
    private int f29494h;

    /* renamed from: i */
    private int f29495i;

    /* renamed from: j */
    private String f29496j;

    public TutorialPageModel(Predicate predicate, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, int i2, String str, int i3) {
        this(predicate, charSequence, charSequence2, null, charSequence3, i, i2, str, i3, null);
    }

    public TutorialPageModel(Predicate predicate, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, int i, int i2, String str, int i3, TutorialCommand tutorialCommand) {
        this.f29489c = predicate;
        this.f29490d = charSequence;
        this.f29491e = charSequence2;
        this.f29492f = charSequence3;
        this.f29493g = charSequence4;
        this.f29494h = i;
        this.f29495i = i2;
        this.f29496j = str;
        this.f29487a = i3;
        this.f29488b = tutorialCommand;
    }

    /* renamed from: a */
    public final boolean m26269a() {
        return this.f29489c.accept();
    }

    public TutorialCommand getCommand() {
        return this.f29488b;
    }

    public CharSequence getCtaText() {
        return this.f29492f;
    }

    public int getDrawableRes() {
        return this.f29494h;
    }

    public int getIconRes() {
        return this.f29495i;
    }

    public int getId() {
        return this.f29487a;
    }

    public String getPageName() {
        return this.f29496j;
    }

    public Predicate getShouldBeDisplayed() {
        return this.f29489c;
    }

    public CharSequence getSubtitle() {
        return this.f29491e;
    }

    public CharSequence getTitle() {
        return this.f29490d;
    }

    public CharSequence getTopTitle() {
        return this.f29493g;
    }

    public boolean isCta() {
        return (this.f29492f == null || this.f29488b == null || !this.f29489c.accept()) ? false : true;
    }
}
