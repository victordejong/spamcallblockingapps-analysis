.class final Lcom/esotericsoftware/kryo/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Lcom/esotericsoftware/kryo/i;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/i;)V
    .locals 0

    .line 1297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1298
    iput-object p1, p0, Lcom/esotericsoftware/kryo/c$a;->a:Ljava/lang/Class;

    .line 1299
    iput-object p2, p0, Lcom/esotericsoftware/kryo/c$a;->b:Lcom/esotericsoftware/kryo/i;

    return-void
.end method
