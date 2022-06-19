.class final Lcom/google/android/material/datepicker/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/android/material/datepicker/n;


# instance fields
.field final a:Ljava/lang/Long;

.field final b:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/material/datepicker/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/datepicker/n;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    sput-object v0, Lcom/google/android/material/datepicker/n;->c:Lcom/google/android/material/datepicker/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/util/TimeZone;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/material/datepicker/n;->a:Ljava/lang/Long;

    .line 33
    iput-object p2, p0, Lcom/google/android/material/datepicker/n;->b:Ljava/util/TimeZone;

    return-void
.end method

.method static a()Lcom/google/android/material/datepicker/n;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/android/material/datepicker/n;->c:Lcom/google/android/material/datepicker/n;

    return-object v0
.end method
