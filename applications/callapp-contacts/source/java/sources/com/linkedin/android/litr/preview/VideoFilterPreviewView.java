package com.linkedin.android.litr.preview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import com.linkedin.android.litr.preview.C16661c;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/preview/VideoFilterPreviewView.class */
public class VideoFilterPreviewView extends GLSurfaceView {
    public VideoFilterPreviewView(Context context) {
        this(context, null);
    }

    public VideoFilterPreviewView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setEGLContextFactory(new C16660b());
        setEGLConfigChooser(new C16659a());
    }

    @Override // android.opengl.GLSurfaceView
    public void setRenderer(GLSurfaceView.Renderer renderer) {
        super.setRenderer(renderer);
        if (renderer instanceof C16661c) {
            ((C16661c) renderer).f58625a = new C16661c.AbstractC16664b() { // from class: com.linkedin.android.litr.preview.VideoFilterPreviewView.1
                @Override // com.linkedin.android.litr.preview.C16661c.AbstractC16664b
                /* renamed from: a */
                public final void mo6796a() {
                    VideoFilterPreviewView.this.requestRender();
                }
            };
        }
    }
}
