package com.callapp.contacts.widget.tutorial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/EndingTutorialView.class */
public class EndingTutorialView extends TutorialView<TutorialPageModel> {
    public EndingTutorialView(Context context) {
        this(context, null);
    }

    public EndingTutorialView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public EndingTutorialView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialView
    public final void a(TutorialPageModel tutorialPageModel, View.OnClickListener onClickListener, TutorialCommand.COMMAND_TYPE command_type) {
        super.a(tutorialPageModel, onClickListener, command_type);
        this.g.setVisibility(8);
    }
}
