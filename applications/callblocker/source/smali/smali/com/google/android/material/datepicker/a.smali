.class public final Lcom/google/android/material/datepicker/a;
.super Ljava/lang/Object;
.source "CalendarConstraints.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/a$a;,
        Lcom/google/android/material/datepicker/a$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/datepicker/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/material/datepicker/l;

.field private final b:Lcom/google/android/material/datepicker/l;

.field private final c:Lcom/google/android/material/datepicker/l;

.field private final d:Lcom/google/android/material/datepicker/a$b;

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/google/android/material/datepicker/a$1;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/a$1;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/a$b;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/material/datepicker/a;->a:Lcom/google/android/material/datepicker/l;

    .line 56
    iput-object p2, p0, Lcom/google/android/material/datepicker/a;->b:Lcom/google/android/material/datepicker/l;

    .line 57
    iput-object p3, p0, Lcom/google/android/material/datepicker/a;->c:Lcom/google/android/material/datepicker/l;

    .line 58
    iput-object p4, p0, Lcom/google/android/material/datepicker/a;->d:Lcom/google/android/material/datepicker/a$b;

    .line 59
    invoke-virtual {p1, p3}, Lcom/google/android/material/datepicker/l;->a(Lcom/google/android/material/datepicker/l;)I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start Month cannot be after current Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p3, p2}, Lcom/google/android/material/datepicker/l;->a(Lcom/google/android/material/datepicker/l;)I

    move-result v0

    if-lez v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "current Month cannot be after end Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/material/datepicker/l;->b(Lcom/google/android/material/datepicker/l;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/datepicker/a;->f:I

    .line 66
    iget v0, p2, Lcom/google/android/material/datepicker/l;->b:I

    iget v1, p1, Lcom/google/android/material/datepicker/l;->b:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/datepicker/a;->e:I

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/a$b;Lcom/google/android/material/datepicker/a$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/datepicker/a;-><init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/l;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->a:Lcom/google/android/material/datepicker/l;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/l;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->b:Lcom/google/android/material/datepicker/l;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/l;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->c:Lcom/google/android/material/datepicker/l;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/a$b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->d:Lcom/google/android/material/datepicker/a$b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/material/datepicker/a$b;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->d:Lcom/google/android/material/datepicker/a$b;

    return-object v0
.end method

.method b()Lcom/google/android/material/datepicker/l;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->a:Lcom/google/android/material/datepicker/l;

    return-object v0
.end method

.method c()Lcom/google/android/material/datepicker/l;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->b:Lcom/google/android/material/datepicker/l;

    return-object v0
.end method

.method d()Lcom/google/android/material/datepicker/l;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->c:Lcom/google/android/material/datepicker/l;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/android/material/datepicker/a;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    if-ne p0, p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    instance-of v2, p1, Lcom/google/android/material/datepicker/a;

    if-nez v2, :cond_2

    move v0, v1

    .line 120
    goto :goto_0

    .line 122
    :cond_2
    check-cast p1, Lcom/google/android/material/datepicker/a;

    .line 123
    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->a:Lcom/google/android/material/datepicker/l;

    iget-object v3, p1, Lcom/google/android/material/datepicker/a;->a:Lcom/google/android/material/datepicker/l;

    invoke-virtual {v2, v3}, Lcom/google/android/material/datepicker/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->b:Lcom/google/android/material/datepicker/l;

    iget-object v3, p1, Lcom/google/android/material/datepicker/a;->b:Lcom/google/android/material/datepicker/l;

    .line 124
    invoke-virtual {v2, v3}, Lcom/google/android/material/datepicker/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->c:Lcom/google/android/material/datepicker/l;

    iget-object v3, p1, Lcom/google/android/material/datepicker/a;->c:Lcom/google/android/material/datepicker/l;

    .line 125
    invoke-virtual {v2, v3}, Lcom/google/android/material/datepicker/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->d:Lcom/google/android/material/datepicker/a$b;

    iget-object v3, p1, Lcom/google/android/material/datepicker/a;->d:Lcom/google/android/material/datepicker/a$b;

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method f()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/android/material/datepicker/a;->e:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->a:Lcom/google/android/material/datepicker/l;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->b:Lcom/google/android/material/datepicker/l;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->c:Lcom/google/android/material/datepicker/l;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/material/datepicker/a;->d:Lcom/google/android/material/datepicker/a$b;

    aput-object v2, v0, v1

    .line 132
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->a:Lcom/google/android/material/datepicker/l;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->b:Lcom/google/android/material/datepicker/l;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->c:Lcom/google/android/material/datepicker/l;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/material/datepicker/a;->d:Lcom/google/android/material/datepicker/a$b;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    return-void
.end method
