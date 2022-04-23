package com.callapp.contacts.widget.tutorial;

import com.callapp.contacts.util.Predicate;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPageModel.class */
public class TutorialPageModel {

    /* renamed from: a  reason: collision with root package name */
    private final int f16969a;

    /* renamed from: b  reason: collision with root package name */
    private TutorialCommand f16970b;

    /* renamed from: c  reason: collision with root package name */
    private Predicate f16971c;

    /* renamed from: d  reason: collision with root package name */
    private CharSequence f16972d;
    private CharSequence e;
    private CharSequence f;
    private CharSequence g;
    private int h;
    private int i;
    private String j;

    public TutorialPageModel(Predicate predicate, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, int i2, String str, int i3) {
        this(predicate, charSequence, charSequence2, null, charSequence3, i, i2, str, i3, null);
    }

    public TutorialPageModel(Predicate predicate, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, int i, int i2, String str, int i3, TutorialCommand tutorialCommand) {
        this.f16971c = predicate;
        this.f16972d = charSequence;
        this.e = charSequence2;
        this.f = charSequence3;
        this.g = charSequence4;
        this.h = i;
        this.i = i2;
        this.j = str;
        this.f16969a = i3;
        this.f16970b = tutorialCommand;
    }

    public final boolean a() {
        return this.f16971c.accept();
    }

    public TutorialCommand getCommand() {
        return this.f16970b;
    }

    public CharSequence getCtaText() {
        return this.f;
    }

    public int getDrawableRes() {
        return this.h;
    }

    public int getIconRes() {
        return this.i;
    }

    public int getId() {
        return this.f16969a;
    }

    public String getPageName() {
        return this.j;
    }

    public Predicate getShouldBeDisplayed() {
        return this.f16971c;
    }

    public CharSequence getSubtitle() {
        return this.e;
    }

    public CharSequence getTitle() {
        return this.f16972d;
    }

    public CharSequence getTopTitle() {
        return this.g;
    }

    public boolean isCta() {
        return (this.f == null || this.f16970b == null || !this.f16971c.accept()) ? false : true;
    }
}
