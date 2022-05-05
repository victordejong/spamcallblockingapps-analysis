package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ResolutionAnchor.class */
public class ResolutionAnchor extends ResolutionNode {
    public static final int BARRIER_CONNECTION = 5;
    public static final int CENTER_CONNECTION = 2;
    public static final int CHAIN_CONNECTION = 4;
    public static final int DIRECT_CONNECTION = 1;
    public static final int MATCH_CONNECTION = 3;
    public static final int UNCONNECTED = 0;
    public float computedValue;
    public ConstraintAnchor myAnchor;
    public float offset;
    public ResolutionAnchor opposite;
    public float oppositeOffset;
    public float resolvedOffset;
    public ResolutionAnchor resolvedTarget;
    public ResolutionAnchor target;
    public int type = 0;
    public ResolutionDimension dimension = null;
    public int dimensionMultiplier = 1;
    public ResolutionDimension oppositeDimension = null;
    public int oppositeDimensionMultiplier = 1;

    public ResolutionAnchor(ConstraintAnchor constraintAnchor) {
        this.myAnchor = constraintAnchor;
    }

    public void addResolvedValue(LinearSystem linearSystem) {
        SolverVariable solverVariable = this.myAnchor.getSolverVariable();
        ResolutionAnchor resolutionAnchor = this.resolvedTarget;
        if (resolutionAnchor == null) {
            linearSystem.addEquality(solverVariable, (int) (this.resolvedOffset + 0.5f));
        } else {
            linearSystem.addEquality(solverVariable, linearSystem.createObjectVariable(resolutionAnchor.myAnchor), (int) (this.resolvedOffset + 0.5f), 6);
        }
    }

    public void dependsOn(int i, ResolutionAnchor resolutionAnchor, int i2) {
        this.type = i;
        this.target = resolutionAnchor;
        this.offset = i2;
        this.target.addDependent(this);
    }

    public void dependsOn(ResolutionAnchor resolutionAnchor, int i) {
        this.target = resolutionAnchor;
        this.offset = i;
        this.target.addDependent(this);
    }

    public void dependsOn(ResolutionAnchor resolutionAnchor, int i, ResolutionDimension resolutionDimension) {
        this.target = resolutionAnchor;
        this.target.addDependent(this);
        this.dimension = resolutionDimension;
        this.dimensionMultiplier = i;
        this.dimension.addDependent(this);
    }

    public float getResolvedValue() {
        return this.resolvedOffset;
    }

    @Override // androidx.constraintlayout.solver.widgets.ResolutionNode
    public void remove(ResolutionDimension resolutionDimension) {
        ResolutionDimension resolutionDimension2 = this.dimension;
        if (resolutionDimension2 == resolutionDimension) {
            this.dimension = null;
            this.offset = this.dimensionMultiplier;
        } else if (resolutionDimension2 == this.oppositeDimension) {
            this.oppositeDimension = null;
            this.oppositeOffset = this.oppositeDimensionMultiplier;
        }
        resolve();
    }

    @Override // androidx.constraintlayout.solver.widgets.ResolutionNode
    public void reset() {
        super.reset();
        this.target = null;
        this.offset = 0.0f;
        this.dimension = null;
        this.dimensionMultiplier = 1;
        this.oppositeDimension = null;
        this.oppositeDimensionMultiplier = 1;
        this.resolvedTarget = null;
        this.resolvedOffset = 0.0f;
        this.computedValue = 0.0f;
        this.opposite = null;
        this.oppositeOffset = 0.0f;
        this.type = 0;
    }

    @Override // androidx.constraintlayout.solver.widgets.ResolutionNode
    public void resolve() {
        ResolutionAnchor resolutionAnchor;
        ResolutionAnchor resolutionAnchor2;
        ResolutionAnchor resolutionAnchor3;
        ResolutionAnchor resolutionAnchor4;
        ResolutionAnchor resolutionAnchor5;
        ResolutionAnchor resolutionAnchor6;
        float f;
        float f2;
        ConstraintAnchor constraintAnchor;
        float f3;
        float f4;
        ResolutionAnchor resolutionAnchor7;
        if (this.state != 1 && this.type != 4) {
            ResolutionDimension resolutionDimension = this.dimension;
            if (resolutionDimension != null) {
                if (resolutionDimension.state == 1) {
                    this.offset = this.dimensionMultiplier * resolutionDimension.value;
                } else {
                    return;
                }
            }
            ResolutionDimension resolutionDimension2 = this.oppositeDimension;
            if (resolutionDimension2 != null) {
                if (resolutionDimension2.state == 1) {
                    this.oppositeOffset = this.oppositeDimensionMultiplier * resolutionDimension2.value;
                } else {
                    return;
                }
            }
            if (this.type == 1 && ((resolutionAnchor7 = this.target) == null || resolutionAnchor7.state == 1)) {
                ResolutionAnchor resolutionAnchor8 = this.target;
                if (resolutionAnchor8 == null) {
                    this.resolvedTarget = this;
                    this.resolvedOffset = this.offset;
                } else {
                    this.resolvedTarget = resolutionAnchor8.resolvedTarget;
                    this.resolvedOffset = resolutionAnchor8.resolvedOffset + this.offset;
                }
                didResolve();
            } else if (this.type == 2 && (resolutionAnchor4 = this.target) != null && resolutionAnchor4.state == 1 && (resolutionAnchor5 = this.opposite) != null && (resolutionAnchor6 = resolutionAnchor5.target) != null && resolutionAnchor6.state == 1) {
                if (LinearSystem.getMetrics() != null) {
                    LinearSystem.getMetrics().centerConnectionResolved++;
                }
                this.resolvedTarget = this.target.resolvedTarget;
                ResolutionAnchor resolutionAnchor9 = this.opposite;
                resolutionAnchor9.resolvedTarget = resolutionAnchor9.target.resolvedTarget;
                ConstraintAnchor.Type type = this.myAnchor.mType;
                int i = 0;
                boolean z = true;
                if (type != ConstraintAnchor.Type.RIGHT) {
                    z = type == ConstraintAnchor.Type.BOTTOM;
                }
                if (z) {
                    f2 = this.target.resolvedOffset;
                    f = this.opposite.target.resolvedOffset;
                } else {
                    f2 = this.opposite.target.resolvedOffset;
                    f = this.target.resolvedOffset;
                }
                float f5 = f2 - f;
                ConstraintAnchor.Type type2 = this.myAnchor.mType;
                if (type2 == ConstraintAnchor.Type.LEFT || type2 == ConstraintAnchor.Type.RIGHT) {
                    f4 = f5 - this.myAnchor.mOwner.getWidth();
                    f3 = this.myAnchor.mOwner.mHorizontalBiasPercent;
                } else {
                    f4 = f5 - constraintAnchor.mOwner.getHeight();
                    f3 = this.myAnchor.mOwner.mVerticalBiasPercent;
                }
                i = this.myAnchor.getMargin();
                int margin = this.opposite.myAnchor.getMargin();
                if (this.myAnchor.getTarget() == this.opposite.myAnchor.getTarget()) {
                    f3 = 0.5f;
                    margin = 0;
                }
                float f6 = i;
                float f7 = margin;
                float f8 = (f4 - f6) - f7;
                if (z) {
                    ResolutionAnchor resolutionAnchor10 = this.opposite;
                    resolutionAnchor10.resolvedOffset = resolutionAnchor10.target.resolvedOffset + f7 + (f8 * f3);
                    this.resolvedOffset = (this.target.resolvedOffset - f6) - (f8 * (1.0f - f3));
                } else {
                    this.resolvedOffset = this.target.resolvedOffset + f6 + (f8 * f3);
                    ResolutionAnchor resolutionAnchor11 = this.opposite;
                    resolutionAnchor11.resolvedOffset = (resolutionAnchor11.target.resolvedOffset - f7) - (f8 * (1.0f - f3));
                }
                didResolve();
                this.opposite.didResolve();
            } else if (this.type == 3 && (resolutionAnchor = this.target) != null && resolutionAnchor.state == 1 && (resolutionAnchor2 = this.opposite) != null && (resolutionAnchor3 = resolutionAnchor2.target) != null && resolutionAnchor3.state == 1) {
                if (LinearSystem.getMetrics() != null) {
                    LinearSystem.getMetrics().matchConnectionResolved++;
                }
                ResolutionAnchor resolutionAnchor12 = this.target;
                this.resolvedTarget = resolutionAnchor12.resolvedTarget;
                ResolutionAnchor resolutionAnchor13 = this.opposite;
                ResolutionAnchor resolutionAnchor14 = resolutionAnchor13.target;
                resolutionAnchor13.resolvedTarget = resolutionAnchor14.resolvedTarget;
                this.resolvedOffset = resolutionAnchor12.resolvedOffset + this.offset;
                resolutionAnchor13.resolvedOffset = resolutionAnchor14.resolvedOffset + resolutionAnchor13.offset;
                didResolve();
                this.opposite.didResolve();
            } else if (this.type == 5) {
                this.myAnchor.mOwner.resolve();
            }
        }
    }

    public void resolve(ResolutionAnchor resolutionAnchor, float f) {
        if (this.state == 0 || !(this.resolvedTarget == resolutionAnchor || this.resolvedOffset == f)) {
            this.resolvedTarget = resolutionAnchor;
            this.resolvedOffset = f;
            if (this.state == 1) {
                invalidate();
            }
            didResolve();
        }
    }

    public String sType(int i) {
        return i == 1 ? "DIRECT" : i == 2 ? "CENTER" : i == 3 ? "MATCH" : i == 4 ? "CHAIN" : i == 5 ? "BARRIER" : "UNCONNECTED";
    }

    public void setOpposite(ResolutionAnchor resolutionAnchor, float f) {
        this.opposite = resolutionAnchor;
        this.oppositeOffset = f;
    }

    public void setOpposite(ResolutionAnchor resolutionAnchor, int i, ResolutionDimension resolutionDimension) {
        this.opposite = resolutionAnchor;
        this.oppositeDimension = resolutionDimension;
        this.oppositeDimensionMultiplier = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        if (this.state != 1) {
            return "{ " + this.myAnchor + " UNRESOLVED} type: " + sType(this.type);
        } else if (this.resolvedTarget == this) {
            return "[" + this.myAnchor + ", RESOLVED: " + this.resolvedOffset + "]  type: " + sType(this.type);
        } else {
            return "[" + this.myAnchor + ", RESOLVED: " + this.resolvedTarget + ":" + this.resolvedOffset + "] type: " + sType(this.type);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        if (r0 == androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM) goto L_0x0046;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update() {
        /*
            r4 = this;
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.myAnchor
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.getTarget()
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x000d
            return
        L_0x000d:
            r0 = r5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.getTarget()
            r1 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.myAnchor
            if (r0 != r1) goto L_0x0025
            r0 = r4
            r1 = 4
            r0.type = r1
            r0 = r5
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r0 = r0.getResolutionNode()
            r1 = 4
            r0.type = r1
        L_0x0025:
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.myAnchor
            int r0 = r0.getMargin()
            r6 = r0
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.myAnchor
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r0 = r0.mType
            r7 = r0
            r0 = r7
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r1 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT
            if (r0 == r1) goto L_0x0046
            r0 = r6
            r8 = r0
            r0 = r7
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r1 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM
            if (r0 != r1) goto L_0x004a
        L_0x0046:
            r0 = r6
            int r0 = -r0
            r8 = r0
        L_0x004a:
            r0 = r4
            r1 = r5
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r1 = r1.getResolutionNode()
            r2 = r8
            r0.dependsOn(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ResolutionAnchor.update():void");
    }
}
