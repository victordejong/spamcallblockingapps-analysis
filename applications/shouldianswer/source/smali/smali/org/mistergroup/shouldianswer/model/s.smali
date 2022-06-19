.class public final Lorg/mistergroup/shouldianswer/model/s;
.super Ljava/lang/Object;
.source "CheckedCallsSeeker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/s$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/s$a;

# The value of this static final field might be set in the static constructor
.field private static final c:I = 0x14


# instance fields
.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/mistergroup/shouldianswer/model/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/model/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/s$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/s;->a:Lorg/mistergroup/shouldianswer/model/s$a;

    const/16 v0, 0x14

    .line 68
    sput v0, Lorg/mistergroup/shouldianswer/model/s;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/s;->b:Ljava/util/LinkedList;

    return-void
.end method
