package com.callapp.contacts.widget.tutorial;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/BeginningTutorialPageModel.class */
public class BeginningTutorialPageModel extends TutorialPageModel {

    /* renamed from: a */
    private int[] f29483a;

    public BeginningTutorialPageModel(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, int i, int i2, String str, int i3) {
        super(_$$Lambda$BeginningTutorialPageModel$tXQZ22DuTbgz2MYppySqirGZpT8.INSTANCE, charSequence, charSequence2, charSequence3, charSequence4, i, i2, str, i3, null);
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m26274b() {
        return true;
    }

    public int[] getIcons() {
        return this.f29483a;
    }

    public void setCallAppInstructionalDrawableResources(List<TutorialPageModel> list) {
        this.f29483a = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            this.f29483a[i] = list.get(i).getIconRes();
        }
    }
}
