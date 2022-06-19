.class public final Lpj0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpj0;->j(Luj0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Luj0;


# direct methods
.method public constructor <init>(Luj0;)V
    .locals 0

    iput-object p1, p0, Lpj0$c;->a:Luj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lpj0$c;->a:Luj0;

    invoke-static {v0}, Lpj0;->k(Luj0;)V

    return-void
.end method
