.class public final Lgm$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lhm$d;

.field public final b:[B

.field public final c:[Lhm$c;

.field public final d:I


# direct methods
.method public constructor <init>(Lhm$d;Lhm$b;[B[Lhm$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgm$a;->a:Lhm$d;

    iput-object p3, p0, Lgm$a;->b:[B

    iput-object p4, p0, Lgm$a;->c:[Lhm$c;

    iput p5, p0, Lgm$a;->d:I

    return-void
.end method
