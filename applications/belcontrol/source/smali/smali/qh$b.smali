.class public final Lqh$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lhp$a;

.field public final b:Lph;

.field public final c:I


# direct methods
.method public constructor <init>(Lhp$a;Lph;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh$b;->a:Lhp$a;

    iput-object p2, p0, Lqh$b;->b:Lph;

    iput p3, p0, Lqh$b;->c:I

    return-void
.end method
