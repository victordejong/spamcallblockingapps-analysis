.class final Lcom/esotericsoftware/kryo/c/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/objenesis/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryo/c/d;->a(Ljava/lang/Class;)Lorg/objenesis/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/esotericsoftware/c/b;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/esotericsoftware/kryo/c/d;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryo/c/d;Lcom/esotericsoftware/c/b;Ljava/lang/Class;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/d$1;->c:Lcom/esotericsoftware/kryo/c/d;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/c/d$1;->a:Lcom/esotericsoftware/c/b;

    iput-object p3, p0, Lcom/esotericsoftware/kryo/c/d$1;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/d$1;->a:Lcom/esotericsoftware/c/b;

    invoke-virtual {v0}, Lcom/esotericsoftware/c/b;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error constructing instance of class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/d$1;->b:Ljava/lang/Class;

    invoke-static {v3}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
