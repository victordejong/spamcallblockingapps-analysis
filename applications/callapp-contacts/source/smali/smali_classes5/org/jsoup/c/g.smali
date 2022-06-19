.class public final Lorg/jsoup/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lorg/jsoup/c/e;

.field public b:Lorg/jsoup/c/f;

.field private c:Lorg/jsoup/c/m;


# direct methods
.method public constructor <init>(Lorg/jsoup/c/m;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/jsoup/c/g;->c:Lorg/jsoup/c/m;

    .line 26
    invoke-virtual {p1}, Lorg/jsoup/c/m;->a()Lorg/jsoup/c/f;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/c/g;->b:Lorg/jsoup/c/f;

    .line 27
    invoke-static {}, Lorg/jsoup/c/e;->b()Lorg/jsoup/c/e;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/c/g;->a:Lorg/jsoup/c/e;

    return-void
.end method

.method public static a()Lorg/jsoup/c/g;
    .locals 2

    .line 205
    new-instance v0, Lorg/jsoup/c/g;

    new-instance v1, Lorg/jsoup/c/n;

    invoke-direct {v1}, Lorg/jsoup/c/n;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/c/g;-><init>(Lorg/jsoup/c/m;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/jsoup/c/g;->c:Lorg/jsoup/c/m;

    invoke-virtual {v0, p1, p2, p0}, Lorg/jsoup/c/m;->b(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/c/g;)Lorg/jsoup/nodes/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;
    .locals 2

    .line 31
    iget-object v0, p0, Lorg/jsoup/c/g;->c:Lorg/jsoup/c/m;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p0}, Lorg/jsoup/c/m;->b(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/c/g;)Lorg/jsoup/nodes/f;

    move-result-object p1

    return-object p1
.end method
