.class public Ld2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/u$a;
    }
.end annotation


# static fields
.field public static c:Ld2/u;

.field public static d:Ld2/u;

.field public static e:Ld2/u;

.field public static f:Ld2/u;


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ld2/u;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld2/u;-><init>(IZ)V

    sput-object v0, Ld2/u;->c:Ld2/u;

    .line 2
    new-instance v0, Ld2/u;

    invoke-direct {v0, v1, v1}, Ld2/u;-><init>(IZ)V

    sput-object v0, Ld2/u;->d:Ld2/u;

    .line 3
    new-instance v0, Ld2/u;

    invoke-direct {v0, v2, v2}, Ld2/u;-><init>(IZ)V

    sput-object v0, Ld2/u;->e:Ld2/u;

    .line 4
    new-instance v0, Ld2/u;

    invoke-direct {v0, v2, v1}, Ld2/u;-><init>(IZ)V

    sput-object v0, Ld2/u;->f:Ld2/u;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ld2/u;->a:I

    .line 3
    iput-boolean p2, p0, Ld2/u;->b:Z

    return-void
.end method
