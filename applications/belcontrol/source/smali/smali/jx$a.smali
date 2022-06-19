.class public Ljx$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljx;->b(Luw;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljx;


# direct methods
.method public constructor <init>(Ljx;)V
    .locals 0

    iput-object p1, p0, Ljx$a;->a:Ljx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljx$a;->a:Ljx;

    iget-object v1, v0, Ljx;->b:Lkx$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lkx$a;->c(Lkx;)V

    :cond_0
    return-void
.end method
