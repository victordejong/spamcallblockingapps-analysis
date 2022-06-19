.class public Lw7/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw7/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lk7/m;

.field public b:J

.field public c:I

.field public d:Lo7/b;

.field public e:Ln7/h;


# direct methods
.method public constructor <init>(Lk7/m;JILo7/b;Ln7/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lw7/q$a;->b:J

    .line 3
    iput-object p1, p0, Lw7/q$a;->a:Lk7/m;

    .line 4
    iput p4, p0, Lw7/q$a;->c:I

    .line 5
    iput-object p5, p0, Lw7/q$a;->d:Lo7/b;

    .line 6
    iput-object p6, p0, Lw7/q$a;->e:Ln7/h;

    return-void
.end method
