.class public final Lev$g0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g0"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lxv;

.field public final c:Lev$k0;


# direct methods
.method public constructor <init>(ILxv;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lev$g0;-><init>(ILxv;Lev$k0;)V

    return-void
.end method

.method public constructor <init>(ILxv;Lev$k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lev$g0;->a:I

    iput-object p2, p0, Lev$g0;->b:Lxv;

    iput-object p3, p0, Lev$g0;->c:Lev$k0;

    return-void
.end method
