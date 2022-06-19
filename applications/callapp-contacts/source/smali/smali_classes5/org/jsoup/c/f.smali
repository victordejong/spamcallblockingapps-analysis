.class public final Lorg/jsoup/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/jsoup/c/f;

.field public static final b:Lorg/jsoup/c/f;


# instance fields
.field final c:Z

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lorg/jsoup/c/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jsoup/c/f;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/c/f;->a:Lorg/jsoup/c/f;

    .line 22
    new-instance v0, Lorg/jsoup/c/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/jsoup/c/f;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/c/f;->b:Lorg/jsoup/c/f;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lorg/jsoup/c/f;->c:Z

    .line 49
    iput-boolean p2, p0, Lorg/jsoup/c/f;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-boolean v0, p0, Lorg/jsoup/c/f;->c:Z

    if-nez v0, :cond_0

    .line 58
    invoke-static {p1}, Lorg/jsoup/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method final a(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    iget-boolean v0, p0, Lorg/jsoup/c/f;->d:Z

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->d()V

    :cond_0
    return-object p1
.end method
