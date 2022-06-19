.class public Lcf1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lof1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcf1;->e(Ljava/lang/String;)Lgf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lof1$b<",
        "Lgf1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lmf1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcf1;


# direct methods
.method public constructor <init>(Lcf1;Lmf1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcf1$b;->c:Lcf1;

    iput-object p2, p0, Lcf1$b;->a:Lmf1;

    iput-object p3, p0, Lcf1$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lvf1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvf1<",
            "Lgf1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcf1$b;->a:Lmf1;

    invoke-interface {v0}, Lmf1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatFactory"

    const-string v1, "Creating NativeVideo tracker."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lhf1;

    iget-object v1, p0, Lcf1$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcf1$b;->c:Lcf1;

    invoke-static {v2}, Lcf1;->d(Lcf1;)Lre1;

    move-result-object v2

    iget-object v3, p0, Lcf1$b;->a:Lmf1;

    invoke-direct {v0, v1, v2, v3}, Lhf1;-><init>(Ljava/lang/String;Lre1;Lmf1;)V

    invoke-static {v0}, Lvf1;->d(Ljava/lang/Object;)Lvf1;

    move-result-object v0

    return-object v0
.end method
