.class final Lorg/jsoup/nodes/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Appendable;

.field private b:Lorg/jsoup/nodes/f$a;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/f$a;)V
    .locals 0

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput-object p1, p0, Lorg/jsoup/nodes/m$a;->a:Ljava/lang/Appendable;

    .line 734
    iput-object p2, p0, Lorg/jsoup/nodes/m$a;->b:Lorg/jsoup/nodes/f$a;

    .line 735
    invoke-virtual {p2}, Lorg/jsoup/nodes/f$a;->a()Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/m;I)V
    .locals 2

    .line 740
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/nodes/m$a;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lorg/jsoup/nodes/m$a;->b:Lorg/jsoup/nodes/f$a;

    invoke-virtual {p1, v0, p2, v1}, Lorg/jsoup/nodes/m;->a(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 742
    new-instance p2, Lorg/jsoup/SerializationException;

    invoke-direct {p2, p1}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Lorg/jsoup/nodes/m;I)V
    .locals 2

    .line 747
    invoke-virtual {p1}, Lorg/jsoup/nodes/m;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/nodes/m$a;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lorg/jsoup/nodes/m$a;->b:Lorg/jsoup/nodes/f$a;

    invoke-virtual {p1, v0, p2, v1}, Lorg/jsoup/nodes/m;->b(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 751
    new-instance p2, Lorg/jsoup/SerializationException;

    invoke-direct {p2, p1}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-void
.end method
