.class public Lz91$e;
.super Lz91$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public b:Ln91$b;

.field public c:Lq71$e;


# direct methods
.method public constructor <init>(Li91;Ln91$b;Lq71$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lz91$g;-><init>(Li91;)V

    iput-object p2, p0, Lz91$e;->b:Ln91$b;

    iput-object p3, p0, Lz91$e;->c:Lq71$e;

    return-void
.end method
