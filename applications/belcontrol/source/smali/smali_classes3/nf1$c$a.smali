.class public Lnf1$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnf1$c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmf1$b;

.field public final synthetic b:Lnf1$c;


# direct methods
.method public constructor <init>(Lnf1$c;Lmf1$b;)V
    .locals 0

    iput-object p1, p0, Lnf1$c$a;->b:Lnf1$c;

    iput-object p2, p0, Lnf1$c$a;->a:Lmf1$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnf1$c$a;->b:Lnf1$c;

    invoke-static {v0}, Lnf1$c;->a(Lnf1$c;)Lnf1$c$b;

    move-result-object v0

    iget-object v1, p0, Lnf1$c$a;->a:Lmf1$b;

    invoke-interface {v0, v1}, Lnf1$c$b;->a(Lmf1$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Luf1;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
