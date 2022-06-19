.class final Lcom/linkedin/android/litr/preview/VideoFilterPreviewView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkedin/android/litr/preview/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkedin/android/litr/preview/VideoFilterPreviewView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/linkedin/android/litr/preview/VideoFilterPreviewView;


# direct methods
.method constructor <init>(Lcom/linkedin/android/litr/preview/VideoFilterPreviewView;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/linkedin/android/litr/preview/VideoFilterPreviewView$1;->a:Lcom/linkedin/android/litr/preview/VideoFilterPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/linkedin/android/litr/preview/VideoFilterPreviewView$1;->a:Lcom/linkedin/android/litr/preview/VideoFilterPreviewView;

    invoke-virtual {v0}, Lcom/linkedin/android/litr/preview/VideoFilterPreviewView;->requestRender()V

    return-void
.end method
