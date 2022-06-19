.class public final Lorg/jsoup/select/Selector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/Selector$SelectorParseException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;
    .locals 0

    .line 91
    invoke-static {p0}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lorg/jsoup/select/h;->a(Ljava/lang/String;)Lorg/jsoup/select/d;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jsoup/select/Selector;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;
    .locals 0

    .line 103
    invoke-static {p0}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 104
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 105
    invoke-static {p0, p1}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;

    move-result-object p0

    return-object p0
.end method
