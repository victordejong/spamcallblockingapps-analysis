.class public Ld2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ld2/h;

.field public static final d:Ld2/h;

.field public static final e:Ld2/h;

.field public static final f:Ld2/h;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ld2/h;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Ld2/h;-><init>(II)V

    sput-object v0, Ld2/h;->c:Ld2/h;

    .line 2
    new-instance v0, Ld2/h;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Ld2/h;-><init>(II)V

    sput-object v0, Ld2/h;->d:Ld2/h;

    .line 3
    new-instance v0, Ld2/h;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Ld2/h;-><init>(II)V

    sput-object v0, Ld2/h;->e:Ld2/h;

    .line 4
    new-instance v0, Ld2/h;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2}, Ld2/h;-><init>(II)V

    sput-object v0, Ld2/h;->f:Ld2/h;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ld2/h;->a:I

    .line 3
    iput p2, p0, Ld2/h;->b:I

    return-void
.end method
