.class final Lcom/linkedin/android/litr/preview/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/android/litr/preview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/linkedin/android/litr/preview/c;


# direct methods
.method constructor <init>(Lcom/linkedin/android/litr/preview/c;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/linkedin/android/litr/preview/c$1;->a:Lcom/linkedin/android/litr/preview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/linkedin/android/litr/preview/c$1;->a:Lcom/linkedin/android/litr/preview/c;

    invoke-static {p1}, Lcom/linkedin/android/litr/preview/c;->a(Lcom/linkedin/android/litr/preview/c;)Lcom/linkedin/android/litr/preview/c$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/linkedin/android/litr/preview/c$b;->a()V

    return-void
.end method
