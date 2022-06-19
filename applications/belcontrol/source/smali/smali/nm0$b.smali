.class public final Lnm0$b;
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


# direct methods
.method public constructor <init>(Lnm0$e;)V
    .locals 0

    iput-object p1, p0, Lnm0$b;->a:Lnm0$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnm0$b;->a:Lnm0$e;

    invoke-interface {v0}, Lnm0$e;->onError()V

    return-void
.end method
