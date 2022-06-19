.class public Lwh1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwh1;-><init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lwh1;


# direct methods
.method public constructor <init>(Lwh1;)V
    .locals 0

    iput-object p1, p0, Lwh1$a;->a:Lwh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lwh1$a;->a:Lwh1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lwh1;->f:Z

    invoke-virtual {v0}, Lwh1;->m()V

    return-void
.end method
