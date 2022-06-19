.class final Lorg/jsoup/nodes/h$a;
.super Lorg/jsoup/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/a/a<",
        "Lorg/jsoup/nodes/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lorg/jsoup/nodes/h;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/h;I)V
    .locals 0

    .line 1603
    invoke-direct {p0, p2}, Lorg/jsoup/a/a;-><init>(I)V

    .line 1604
    iput-object p1, p0, Lorg/jsoup/nodes/h$a;->a:Lorg/jsoup/nodes/h;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1608
    iget-object v0, p0, Lorg/jsoup/nodes/h$a;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->o()V

    return-void
.end method
