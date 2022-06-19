.class final Lcom/google/android/material/datepicker/l;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/material/datepicker/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/datepicker/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:J

.field private final f:Ljava/util/Calendar;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/google/android/material/datepicker/l$1;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/l$1;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 59
    invoke-static {p1}, Lcom/google/android/material/datepicker/r;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    .line 60
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/l;->a:I

    .line 61
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/l;->b:I

    .line 62
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/l;->c:I

    .line 63
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/l;->d:I

    .line 64
    invoke-static {}, Lcom/google/android/material/datepicker/r;->c()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->g:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/datepicker/l;->e:J

    .line 66
    return-void
.end method

.method static a()Lcom/google/android/material/datepicker/l;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/material/datepicker/l;

    invoke-static {}, Lcom/google/android/material/datepicker/r;->a()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method static a(II)Lcom/google/android/material/datepicker/l;
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/google/android/material/datepicker/r;->b()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 91
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 92
    new-instance v1, Lcom/google/android/material/datepicker/l;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/l;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method static a(J)Lcom/google/android/material/datepicker/l;
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/google/android/material/datepicker/r;->b()Ljava/util/Calendar;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 76
    new-instance v1, Lcom/google/android/material/datepicker/l;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/l;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/google/android/material/datepicker/l;)I
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method a(I)J
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/r;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 167
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 168
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method b()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    .line 106
    if-gez v0, :cond_0

    .line 107
    iget v1, p0, Lcom/google/android/material/datepicker/l;->c:I

    add-int/2addr v0, v1

    .line 109
    :cond_0
    return v0
.end method

.method b(Lcom/google/android/material/datepicker/l;)I
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 146
    iget v0, p1, Lcom/google/android/material/datepicker/l;->b:I

    iget v1, p0, Lcom/google/android/material/datepicker/l;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget v1, p1, Lcom/google/android/material/datepicker/l;->a:I

    iget v2, p0, Lcom/google/android/material/datepicker/l;->a:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only Gregorian calendars are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(I)Lcom/google/android/material/datepicker/l;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/r;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 178
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 179
    new-instance v1, Lcom/google/android/material/datepicker/l;

    invoke-direct {v1, v0}, Lcom/google/android/material/datepicker/l;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method

.method c()J
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/material/datepicker/l;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/l;->a(Lcom/google/android/material/datepicker/l;)I

    move-result v0

    return v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    if-ne p0, p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    instance-of v2, p1, Lcom/google/android/material/datepicker/l;

    if-nez v2, :cond_2

    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    check-cast p1, Lcom/google/android/material/datepicker/l;

    .line 121
    iget v2, p0, Lcom/google/android/material/datepicker/l;->a:I

    iget v3, p1, Lcom/google/android/material/datepicker/l;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/material/datepicker/l;->b:I

    iget v3, p1, Lcom/google/android/material/datepicker/l;->b:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/datepicker/l;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/material/datepicker/l;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 127
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/google/android/material/datepicker/l;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Lcom/google/android/material/datepicker/l;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    return-void
.end method
