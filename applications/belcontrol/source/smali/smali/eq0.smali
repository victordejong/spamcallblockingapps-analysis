.class public final Leq0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final d:Leq0;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Leq0;

    const/4 v1, 0x1

    const/16 v2, 0x1e

    const/16 v3, 0xe10

    invoke-direct {v0, v1, v2, v3}, Leq0;-><init>(III)V

    sput-object v0, Leq0;->d:Leq0;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Leq0;->a:I

    iput p2, p0, Leq0;->b:I

    iput p3, p0, Leq0;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Leq0;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Leq0;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Leq0;->a:I

    return v0
.end method
