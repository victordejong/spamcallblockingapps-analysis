.class public final Lorg/jsoup/select/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/a$a;,
        Lorg/jsoup/select/a$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;
    .locals 2

    .line 26
    new-instance v0, Lorg/jsoup/select/c;

    invoke-direct {v0}, Lorg/jsoup/select/c;-><init>()V

    .line 27
    new-instance v1, Lorg/jsoup/select/a$a;

    invoke-direct {v1, p1, v0, p0}, Lorg/jsoup/select/a$a;-><init>(Lorg/jsoup/nodes/h;Lorg/jsoup/select/c;Lorg/jsoup/select/d;)V

    invoke-static {v1, p1}, Lorg/jsoup/select/f;->a(Lorg/jsoup/select/g;Lorg/jsoup/nodes/m;)V

    return-object v0
.end method
