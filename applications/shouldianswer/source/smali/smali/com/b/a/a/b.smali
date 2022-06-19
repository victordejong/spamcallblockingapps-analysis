.class public abstract Lcom/b/a/a/b;
.super Ljava/lang/Object;
.source "METValidator.java"


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/b/a/a/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/b/a/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Ljava/lang/CharSequence;Z)Z
.end method
