.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->postMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lorg/json/JSONArray;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

.field public final synthetic f:J

.field public final synthetic g:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Long;Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->g:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->b:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->c:Ljava/lang/Long;

    iput-object p5, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->d:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    iput-wide p6, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->g:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->b:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->c:Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Long;Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->g:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->d:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    iget-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;->f:J

    invoke-static {p1, p2, v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->b(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V

    return-void
.end method
