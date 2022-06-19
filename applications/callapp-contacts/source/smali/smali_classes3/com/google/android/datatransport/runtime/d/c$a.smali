.class public final Lcom/google/android/datatransport/runtime/d/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/android/datatransport/runtime/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/datatransport/runtime/d/c;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/d/c;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/d/c$a;->a:Lcom/google/android/datatransport/runtime/d/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/android/datatransport/runtime/d/c;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/datatransport/runtime/d/c$a;->a:Lcom/google/android/datatransport/runtime/d/c;

    return-object v0
.end method
