.class public final Lm0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/c$a;,
        Lm0/c$c;,
        Lm0/c$b;,
        Lm0/c$d;,
        Lm0/c$f;,
        Lm0/c$e;
    }
.end annotation


# instance fields
.field public final a:Lm0/c$e;


# direct methods
.method public constructor <init>(Lm0/c$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm0/c;->a:Lm0/c$e;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/c;->a:Lm0/c$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
