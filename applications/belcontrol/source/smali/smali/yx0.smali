.class public final synthetic Lyx0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lyx0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lyx0;

    invoke-direct {v0}, Lyx0;-><init>()V

    sput-object v0, Lyx0;->a:Lyx0;

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

    check-cast p1, Lc71$b;

    check-cast p2, Lc71$b;

    invoke-virtual {p1, p2}, Lc71$b;->a(Lc71$b;)I

    move-result p1

    return p1
.end method
