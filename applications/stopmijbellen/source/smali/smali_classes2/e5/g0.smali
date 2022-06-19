.class public final synthetic Le5/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le5/g0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le5/g0;

    invoke-direct {v0}, Le5/g0;-><init>()V

    sput-object v0, Le5/g0;->a:Le5/g0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg5/v$b;

    check-cast p2, Lg5/v$b;

    .line 1
    invoke-virtual {p1}, Lg5/v$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lg5/v$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
