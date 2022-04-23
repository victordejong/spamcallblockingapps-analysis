package com.linkedin.android.litr.preview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import com.linkedin.android.litr.preview.c;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/preview/VideoFilterPreviewView.class */
public class VideoFilterPreviewView extends GLSurfaceView {
    public VideoFilterPreviewView(Context context) {
        this(context, null);
    }

    public VideoFilterPreviewView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setEGLContextFactory(new b());
        setEGLConfigChooser(new a());
    }

    @Override // android.opengl.GLSurfaceView
    public void setRenderer(GLSurfaceView.Renderer renderer) {
        super.setRenderer(renderer);
        if (renderer instanceof c) {
            ((c) renderer).f33761a = new c.b() { // from class: com.linkedin.android.litr.preview.VideoFilterPreviewView.1
                @Override // com.linkedin.android.litr.preview.c.b
                public final void a() {
                    VideoFilterPreviewView.this.requestRender();
                }
            };
        }
    }
}
