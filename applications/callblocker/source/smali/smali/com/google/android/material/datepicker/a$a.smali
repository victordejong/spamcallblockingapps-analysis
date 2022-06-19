.class public final Lcom/google/android/material/datepicker/a$a;
.super Ljava/lang/Object;
.source "CalendarConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:J

.field static final b:J


# instance fields
.field private c:J

.field private d:J

.field private e:Ljava/lang/Long;

.field private f:Lcom/google/android/material/datepicker/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 177
    const/16 v0, 0x76c

    const/4 v1, 0x0

    .line 178
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/l;->a(II)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/l;->e:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/r;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/a$a;->a:J

    .line 183
    const/16 v0, 0x834

    const/16 v1, 0xb

    .line 184
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/l;->a(II)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/l;->e:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/r;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/a$a;->b:J

    .line 183
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-wide v0, Lcom/google/android/material/datepicker/a$a;->a:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->c:J

    .line 189
    sget-wide v0, Lcom/google/android/material/datepicker/a$a;->b:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    .line 191
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/f;->b(J)Lcom/google/android/material/datepicker/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/a$a;->f:Lcom/google/android/material/datepicker/a$b;

    .line 193
    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/a;)V
    .locals 2

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-wide v0, Lcom/google/android/material/datepicker/a$a;->a:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->c:J

    .line 189
    sget-wide v0, Lcom/google/android/material/datepicker/a$a;->b:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    .line 191
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/f;->b(J)Lcom/google/android/material/datepicker/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/a$a;->f:Lcom/google/android/material/datepicker/a$b;

    .line 196
    invoke-static {p1}, Lcom/google/android/material/datepicker/a;->a(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/l;->e:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->c:J

    .line 197
    invoke-static {p1}, Lcom/google/android/material/datepicker/a;->b(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/l;->e:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    .line 198
    invoke-static {p1}, Lcom/google/android/material/datepicker/a;->c(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/l;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/a$a;->e:Ljava/lang/Long;

    .line 199
    invoke-static {p1}, Lcom/google/android/material/datepicker/a;->d(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/a$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/a$a;->f:Lcom/google/android/material/datepicker/a$b;

    .line 200
    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/android/material/datepicker/a$a;
    .locals 1

    .prologue
    .line 279
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/a$a;->e:Ljava/lang/Long;

    .line 280
    return-object p0
.end method

.method public a()Lcom/google/android/material/datepicker/a;
    .locals 8

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/material/datepicker/a$a;->e:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 297
    invoke-static {}, Lcom/google/android/material/datepicker/i;->as()J

    move-result-wide v0

    .line 298
    iget-wide v2, p0, Lcom/google/android/material/datepicker/a$a;->c:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/a$a;->e:Ljava/lang/Long;

    .line 300
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 301
    const-string/jumbo v0, "DEEP_COPY_VALIDATOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/a$a;->f:Lcom/google/android/material/datepicker/a$b;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 302
    new-instance v0, Lcom/google/android/material/datepicker/a;

    iget-wide v2, p0, Lcom/google/android/material/datepicker/a$a;->c:J

    .line 303
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/l;->a(J)Lcom/google/android/material/datepicker/l;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    .line 304
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/l;->a(J)Lcom/google/android/material/datepicker/l;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/datepicker/a$a;->e:Ljava/lang/Long;

    .line 305
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/material/datepicker/l;->a(J)Lcom/google/android/material/datepicker/l;

    move-result-object v3

    const-string/jumbo v5, "DEEP_COPY_VALIDATOR_KEY"

    .line 306
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/datepicker/a$b;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/a;-><init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/a$b;Lcom/google/android/material/datepicker/a$1;)V

    .line 302
    return-object v0

    .line 298
    :cond_1
    iget-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->c:J

    goto :goto_0
.end method
