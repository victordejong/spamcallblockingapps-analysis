.class public final Lpv$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Lpv;


# direct methods
.method public constructor <init>(Lpv;)V
    .locals 0

    iput-object p1, p0, Lpv$g;->a:Lpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lpv$g;->a:Lpv;

    invoke-virtual {v0}, Lpv;->U()V

    return-void
.end method
