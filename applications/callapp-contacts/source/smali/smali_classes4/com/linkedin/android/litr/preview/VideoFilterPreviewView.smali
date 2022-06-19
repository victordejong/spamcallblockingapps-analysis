.class public Lcom/linkedin/android/litr/preview/VideoFilterPreviewView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/linkedin/android/litr/preview/VideoFilterPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Lcom/linkedin/android/litr/preview/b;

    invoke-direct {p1}, Lcom/linkedin/android/litr/preview/b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/linkedin/android/litr/preview/VideoFilterPreviewView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 26
    new-instance p1, Lcom/linkedin/android/litr/preview/a;

    invoke-direct {p1}, Lcom/linkedin/android/litr/preview/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/linkedin/android/litr/preview/VideoFilterPreviewView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method


# virtual methods
.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 33
    instance-of v0, p1, Lcom/linkedin/android/litr/preview/c;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lcom/linkedin/android/litr/preview/c;

    new-instance v0, Lcom/linkedin/android/litr/preview/VideoFilterPreviewView$1;

    invoke-direct {v0, p0}, Lcom/linkedin/android/litr/preview/VideoFilterPreviewView$1;-><init>(Lcom/linkedin/android/litr/preview/VideoFilterPreviewView;)V

    .line 1092
    iput-object v0, p1, Lcom/linkedin/android/litr/preview/c;->a:Lcom/linkedin/android/litr/preview/c$b;

    :cond_0
    return-void
.end method
