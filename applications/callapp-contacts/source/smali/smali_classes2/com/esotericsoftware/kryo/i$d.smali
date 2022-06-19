.class public final Lcom/esotericsoftware/kryo/i$d;
.super Lcom/esotericsoftware/kryo/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/esotericsoftware/kryo/h;",
        ">",
        "Lcom/esotericsoftware/kryo/i$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/esotericsoftware/kryo/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/i$a;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/esotericsoftware/kryo/i$d;->a:Lcom/esotericsoftware/kryo/h;

    return-void
.end method


# virtual methods
.method public final a(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/esotericsoftware/kryo/i$d;->a:Lcom/esotericsoftware/kryo/h;

    return-object p1
.end method
