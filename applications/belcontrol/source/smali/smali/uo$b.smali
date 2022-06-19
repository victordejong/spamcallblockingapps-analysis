.class public final Luo$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lhp;

.field public final b:Lhp$b;

.field public final c:Lqp;


# direct methods
.method public constructor <init>(Lhp;Lhp$b;Lqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luo$b;->a:Lhp;

    iput-object p2, p0, Luo$b;->b:Lhp$b;

    iput-object p3, p0, Luo$b;->c:Lqp;

    return-void
.end method
