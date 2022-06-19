.class public final Lnm0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnm0;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnm0$e;

.field public final synthetic b:Lmm0;


# direct methods
.method public constructor <init>(Lnm0$e;Lmm0;)V
    .locals 0

    iput-object p1, p0, Lnm0$c;->a:Lnm0$e;

    iput-object p2, p0, Lnm0$c;->b:Lmm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnm0$c;->a:Lnm0$e;

    iget-object v1, p0, Lnm0$c;->b:Lmm0;

    invoke-interface {v0, v1}, Lnm0$e;->a(Lmm0;)V

    return-void
.end method
