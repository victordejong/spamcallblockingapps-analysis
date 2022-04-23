package com.callapp.contacts.widget.floatingwidget.ui;

import android.graphics.Point;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig.class */
public class ChatHeadConfig {

    /* renamed from: a  reason: collision with root package name */
    public int f16715a;

    /* renamed from: b  reason: collision with root package name */
    private int f16716b;

    /* renamed from: c  reason: collision with root package name */
    private int f16717c;

    /* renamed from: d  reason: collision with root package name */
    private int f16718d;
    private int e;
    private Point f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private boolean l;

    public int getCloseButtonHeight() {
        return this.h;
    }

    public int getCloseButtonWidth() {
        return this.g;
    }

    public int getHeadHeight() {
        return this.f16716b;
    }

    public int getHeadWidth() {
        return this.f16717c;
    }

    public Point getInitialPosition() {
        return this.f;
    }

    public boolean isCloseButtonHidden() {
        return this.l;
    }

    public void setCircularRingHeight(int i) {
        this.k = i;
    }

    public void setCircularRingWidth(int i) {
        this.j = i;
    }

    public void setCloseButtonBottomMargin(int i) {
        this.i = i;
    }

    public void setCloseButtonHeight(int i) {
        this.h = i;
    }

    public void setCloseButtonHidden(boolean z) {
        this.l = z;
    }

    public void setCloseButtonWidth(int i) {
        this.g = i;
    }

    public void setHeadHeight(int i) {
        this.f16716b = i;
    }

    public void setHeadHorizontalSpacing(int i) {
        this.f16718d = i;
    }

    public void setHeadVerticalSpacing(int i) {
        this.e = i;
    }

    public void setHeadWidth(int i) {
        this.f16717c = i;
    }

    public void setInitialPosition(Point point) {
        this.f = point;
    }

    public void setMaxChatHeads(int i) {
        this.f16715a = i;
    }
}
