.class public final Lsk0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk0;->t(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lsk0;->h()Lal0;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lal0;->h()Lal0;

    move-result-object v0

    invoke-static {v0}, Lsk0;->i(Lal0;)Lal0;

    :cond_0
    return-void
.end method
