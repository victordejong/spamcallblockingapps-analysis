.class public abstract Lfh$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfh$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leh;)V
    .locals 0

    invoke-static {p0, p1}, Lgh;->b(Lfh$b;Leh;)V

    return-void
.end method

.method public d(Lph;Ljava/lang/Object;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lfh$a;->e(Lph;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lph;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lgh;->a(Lfh$b;Z)V

    return-void
.end method
