.class public final Lorg/apache/commons/lang3/d/a;
.super Lorg/apache/commons/lang3/d/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/d/b<",
        "T",
        "L;",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final a:[Lorg/apache/commons/lang3/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/lang3/d/a<",
            "**>;"
        }
    .end annotation
.end field

.field private static final e:Lorg/apache/commons/lang3/d/a;


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/lang3/d/a;

    .line 46
    sput-object v0, Lorg/apache/commons/lang3/d/a;->a:[Lorg/apache/commons/lang3/d/a;

    const/4 v0, 0x0

    .line 53
    invoke-static {v0, v0}, Lorg/apache/commons/lang3/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/d/a;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/d/a;->e:Lorg/apache/commons/lang3/d/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;)V"
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Lorg/apache/commons/lang3/d/b;-><init>()V

    .line 171
    iput-object p1, p0, Lorg/apache/commons/lang3/d/a;->b:Ljava/lang/Object;

    .line 172
    iput-object p2, p0, Lorg/apache/commons/lang3/d/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lorg/apache/commons/lang3/d/a<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/apache/commons/lang3/d/a;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/d/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/apache/commons/lang3/d/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/commons/lang3/d/a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 202
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
