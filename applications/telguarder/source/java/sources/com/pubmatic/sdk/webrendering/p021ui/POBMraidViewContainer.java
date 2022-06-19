package com.pubmatic.sdk.webrendering.p021ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.pubmatic.sdk.webrendering.POBUIUtil;
import com.pubmatic.sdk.webrendering.p021ui.POBFullScreenActivity;
/* renamed from: com.pubmatic.sdk.webrendering.ui.POBMraidViewContainer */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBMraidViewContainer.class */
public class POBMraidViewContainer extends FrameLayout {

    /* renamed from: a */
    private ImageView f1234a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBMraidViewContainer$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBMraidViewContainer$a.class */
    public class View$OnClickListenerC2065a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ int f1235a;

        /* renamed from: b */
        final /* synthetic */ Context f1236b;

        View$OnClickListenerC2065a(POBMraidViewContainer pOBMraidViewContainer, int i, Context context) {
            this.f1235a = i;
            this.f1236b = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(POBFullScreenActivity.ACTIONS.POB_CLOSE.name());
            intent.putExtra(POBFullScreenActivity.RENDERER_IDENTIFIER, this.f1235a);
            POBFullScreenActivity.sendBroadcast(this.f1236b, intent);
        }
    }

    public POBMraidViewContainer(Context context) {
        super(context);
    }

    public POBMraidViewContainer(Context context, ViewGroup viewGroup, int i) {
        this(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        layoutParams.setMargins(0, 0, 0, 0);
        addView(viewGroup, layoutParams);
        ImageButton createCloseButton = POBUIUtil.createCloseButton(context);
        this.f1234a = createCloseButton;
        addView(createCloseButton);
        this.f1234a.setOnClickListener(new View$OnClickListenerC2065a(this, i, context));
    }

    public ImageView getCloseBtn() {
        return this.f1234a;
    }
}
