.class public Lb0$d;
.super Lb0$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lv30;


# direct methods
.method public constructor <init>(Lv30;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb0$g;-><init>(Lb0$a;)V

    iput-object p1, p0, Lb0$d;->a:Lv30;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lb0$d;->a:Lv30;

    invoke-virtual {v0}, Lv30;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lb0$d;->a:Lv30;

    invoke-virtual {v0}, Lv30;->stop()V

    return-void
.end method
