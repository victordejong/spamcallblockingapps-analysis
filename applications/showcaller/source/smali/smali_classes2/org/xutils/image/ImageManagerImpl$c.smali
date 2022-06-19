.class Lorg/xutils/image/ImageManagerImpl$c;
.super Ljava/lang/Object;
.source "ImageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/ImageManagerImpl;->bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/ImageView;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lorg/xutils/common/Callback$CommonCallback;

.field final synthetic g:Lorg/xutils/image/ImageManagerImpl;


# direct methods
.method constructor <init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/image/ImageManagerImpl$c;->g:Lorg/xutils/image/ImageManagerImpl;

    iput-object p2, p0, Lorg/xutils/image/ImageManagerImpl$c;->d:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/xutils/image/ImageManagerImpl$c;->e:Ljava/lang/String;

    iput-object p4, p0, Lorg/xutils/image/ImageManagerImpl$c;->f:Lorg/xutils/common/Callback$CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/xutils/image/ImageManagerImpl$c;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/xutils/image/ImageManagerImpl$c;->e:Ljava/lang/String;

    iget-object v2, p0, Lorg/xutils/image/ImageManagerImpl$c;->f:Lorg/xutils/common/Callback$CommonCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Lorg/xutils/image/a;->i(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;ILorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    return-void
.end method
