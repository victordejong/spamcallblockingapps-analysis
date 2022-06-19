.class public final Lr9/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:[Laa/y;

.field public final synthetic d:Lr9/e;


# direct methods
.method public constructor <init>(Lr9/e;Ljava/lang/String;J[Laa/y;[J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr9/e$e;->d:Lr9/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lr9/e$e;->a:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Lr9/e$e;->b:J

    .line 4
    iput-object p5, p0, Lr9/e$e;->c:[Laa/y;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr9/e$e;->c:[Laa/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lq9/c;->d(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
